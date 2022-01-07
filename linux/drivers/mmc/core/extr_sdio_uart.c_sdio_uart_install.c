
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; struct sdio_uart_port* driver_data; } ;
struct tty_driver {int dummy; } ;
struct sdio_uart_port {int dummy; } ;


 struct sdio_uart_port* sdio_uart_port_get (int) ;
 int sdio_uart_port_put (struct sdio_uart_port*) ;
 int tty_standard_install (struct tty_driver*,struct tty_struct*) ;

__attribute__((used)) static int sdio_uart_install(struct tty_driver *driver, struct tty_struct *tty)
{
 int idx = tty->index;
 struct sdio_uart_port *port = sdio_uart_port_get(idx);
 int ret = tty_standard_install(driver, tty);

 if (ret == 0)

  tty->driver_data = port;
 else
  sdio_uart_port_put(port);
 return ret;
}
