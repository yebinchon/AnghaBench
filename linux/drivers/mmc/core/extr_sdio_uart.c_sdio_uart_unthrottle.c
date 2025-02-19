
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {int func; scalar_t__ x_char; } ;


 scalar_t__ C_CRTSCTS (struct tty_struct*) ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 scalar_t__ START_CHAR (struct tty_struct*) ;
 int TIOCM_RTS ;
 scalar_t__ sdio_uart_claim_func (struct sdio_uart_port*) ;
 int sdio_uart_irq (int ) ;
 int sdio_uart_release_func (struct sdio_uart_port*) ;
 int sdio_uart_set_mctrl (struct sdio_uart_port*,int ) ;
 int sdio_uart_start_tx (struct sdio_uart_port*) ;

__attribute__((used)) static void sdio_uart_unthrottle(struct tty_struct *tty)
{
 struct sdio_uart_port *port = tty->driver_data;

 if (!I_IXOFF(tty) && !C_CRTSCTS(tty))
  return;

 if (sdio_uart_claim_func(port) != 0)
  return;

 if (I_IXOFF(tty)) {
  if (port->x_char) {
   port->x_char = 0;
  } else {
   port->x_char = START_CHAR(tty);
   sdio_uart_start_tx(port);
  }
 }

 if (C_CRTSCTS(tty))
  sdio_uart_set_mctrl(port, TIOCM_RTS);

 sdio_uart_irq(port->func);
 sdio_uart_release_func(port);
}
