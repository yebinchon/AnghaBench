
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {int dummy; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_OUT1 ;
 unsigned int TIOCM_OUT2 ;
 unsigned int TIOCM_RTS ;
 int UART_MCR ;
 unsigned char UART_MCR_DTR ;
 unsigned char UART_MCR_LOOP ;
 unsigned char UART_MCR_OUT1 ;
 unsigned char UART_MCR_OUT2 ;
 unsigned char UART_MCR_RTS ;
 int sdio_out (struct sdio_uart_port*,int ,unsigned char) ;

__attribute__((used)) static void sdio_uart_write_mctrl(struct sdio_uart_port *port,
      unsigned int mctrl)
{
 unsigned char mcr = 0;

 if (mctrl & TIOCM_RTS)
  mcr |= UART_MCR_RTS;
 if (mctrl & TIOCM_DTR)
  mcr |= UART_MCR_DTR;
 if (mctrl & TIOCM_OUT1)
  mcr |= UART_MCR_OUT1;
 if (mctrl & TIOCM_OUT2)
  mcr |= UART_MCR_OUT2;
 if (mctrl & TIOCM_LOOP)
  mcr |= UART_MCR_LOOP;

 sdio_out(port, UART_MCR, mcr);
}
