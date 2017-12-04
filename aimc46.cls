%%
%%   This is file `aimc46.cls',
%%   __________________________________
%%   Copyright © 2015 Vahid Damanafshan
%%   vdamanafshan@gmail.com
%%
%%   http://aimc46.yazd.ac.ir
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aimc46}[2015/05/12  v0.3 A template for the 46th annual Iranian mathematics conference]
\LoadClass[a4paper,11pt]{article}
\RequirePackage{graphicx}
\RequirePackage[all]{xy}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{subfig}
\RequirePackage{ifxetex}
\RequirePackage[total={15cm,22cm},centering,top=5cm]{geometry}
\pagestyle{empty}


\newif\if@aimcpersian
\DeclareOption{aimcpersian}{\@aimcpersiantrue}
\ProcessOptions


\if@aimcpersian
\RequirePackage{xepersian}
\settextfont[BoldFont={YasBd.ttf},ItalicFont={YasIt.ttf},BoldItalicFont={YasBdIt.ttf}]{Yas.ttf}
%\setlatintextfont{Times New Roman}
\setdigitfont{Yas.ttf}

\newcommand{\university}[1]{%
\\[1mm]
\small #1
}%

\newcommand{\keywords}[1]{%
{\small
\quotation
\par\noindent\textbf{واژه‌های کلیدی:} #1\par
\endquotation
\ignorespaces
}
}%

\newcommand{\subject}[1]{%
\bgroup
\quotation
\setlength{\parskip}{-1.2em}
\raggedright
{\small%
\lr{\textbf{Mathematics  Subject Classification [2010]:} #1}%
}
\endquotation
\egroup
}%

\newcommand{\email}[1]{%
\noindent
پست الکترونیکی:
\texttt{#1}
\par
\vspace*{-.4em}%
}%


\theoremstyle{definition}
\newtheorem{definition}{تعریف}[section]
\theoremstyle{plain}
\newtheorem{theorem}[definition]{قضیه}
\newtheorem{lemma}[definition]{لم}
\newtheorem{proposition}[definition]{گزاره}
\newtheorem{corollary}[definition]{نتیجه}
\theoremstyle{definition}
\newtheorem{example}[definition]{مثال}
\newtheorem{remark}[definition]{ملاحظه}
\newtheorem*{solution}{حل}

\AtBeginDocument{\baselineskip=.6cm}

\bidi@AtBeginEnvironment{thebibliography}{\small}

\if@titlepage
  \renewcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\right@footnoterule\relax
  \let\left@footnoterule\relax
  \let\textwidth@footnoterule\relax
  \let \footnote \thanks
  \let \LTRfootnote \LTRthanks
  \let \RTLfootnote \RTLthanks
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\LARGE \@title \par}%
    \vskip 3em%
    {\large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
      \vskip 1.5em%
    {\large \@date \par}%       % Set date in \large size.
  \end{center}\par
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\LTRthanks\relax
  \global\let\RTLthanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\else
\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    %\thispagestyle{plain}
    \@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\LTRthanks\relax
  \global\let\RTLthanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
  \let \LTRfootnote \LTRthanks
  \let \RTLfootnote \RTLthanks
    {\LARGE \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
   %{\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\fi


\else

\newcommand{\university}[1]{%
\\[.1em]
\small #1
}%

\newcommand{\keywords}[1]{%
{\small%
\quotation
\noindent\textbf{Keywords:} #1
\endquotation
}
}%

\newcommand{\subject}[1]{%
\bgroup
\setlength{\parskip}{-1.5em}
{\small%
\quotation
\noindent\textbf{%
Mathematics  Subject Classification [2010]:
}
#1
\endquotation
}
\egroup
}%

\newcommand{\email}[1]{\par\noindent
Email: \texttt{#1}
\par
}

\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]
\theoremstyle{plain}
\newtheorem{theorem}[definition]{Theorem}
\newtheorem{lemma}[definition]{Lemma}
\newtheorem{proposition}[definition]{Proposition}
\newtheorem{corollary}[definition]{Corollary}
\theoremstyle{definition}
\newtheorem{example}[definition]{Example}
\newtheorem{remark}[definition]{Remark}
\newtheorem*{solution}{Solution}

  \if@titlepage
  \renewcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vfil
  \vskip 60\p@
  \begin{center}%
    {\LARGE \@title \par}%
    \vskip 3em%
    {\large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
      \vskip 1.5em%
    {\large \@date \par}%       % Set date in \large size.
  \end{center}\par
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\else
\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    %\thispagestyle{plain}
    \@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
  % {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\fi
\fi


%% 
%% 
%% 
%%
%% End of file `aimc46.cls'.