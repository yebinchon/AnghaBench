
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktermios {int c_iflag; int c_lflag; int c_cflag; int c_oflag; } ;


 int BRKINT ;
 int CBAUD ;
 int CBAUDEX ;
 int CS8 ;
 int CSIZE ;
 int ECHO ;
 int ECHONL ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int IGNBRK ;
 int IGNCR ;
 int INLCR ;
 int ISIG ;
 int ISTRIP ;
 int IXON ;
 int OPOST ;
 int PARENB ;
 int PARMRK ;
 int tty_termios_encode_baud_rate (struct ktermios*,int,int) ;

__attribute__((used)) static void hso_init_termios(struct ktermios *termios)
{



 termios->c_iflag &=
  ~(IGNBRK
  | BRKINT
  | PARMRK
  | ISTRIP
  | INLCR
  | IGNCR
  | ICRNL
  | IXON);


 termios->c_oflag &= ~OPOST;

 termios->c_lflag &=
  ~(ECHO
  | ECHONL
  | ICANON

  | ISIG

  | IEXTEN);

 termios->c_cflag &=
  ~(CSIZE
  | PARENB
  | CBAUD
  | CBAUDEX);

 termios->c_cflag |= CS8;


 tty_termios_encode_baud_rate(termios, 115200, 115200);
}
