
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {int dummy; } ;


 int sdio_uart_claim_func (struct sdio_uart_port*) ;
 int sdio_uart_release_func (struct sdio_uart_port*) ;
 int sdio_uart_update_mctrl (struct sdio_uart_port*,unsigned int,unsigned int) ;

__attribute__((used)) static int sdio_uart_tiocmset(struct tty_struct *tty,
         unsigned int set, unsigned int clear)
{
 struct sdio_uart_port *port = tty->driver_data;
 int result;

 result = sdio_uart_claim_func(port);
 if (!result) {
  sdio_uart_update_mctrl(port, set, clear);
  sdio_uart_release_func(port);
 }

 return result;
}
