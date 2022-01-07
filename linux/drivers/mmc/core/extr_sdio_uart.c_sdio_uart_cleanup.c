
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {int dummy; } ;


 int sdio_uart_port_put (struct sdio_uart_port*) ;

__attribute__((used)) static void sdio_uart_cleanup(struct tty_struct *tty)
{
 struct sdio_uart_port *port = tty->driver_data;
 tty->driver_data = ((void*)0);
 sdio_uart_port_put(port);
}
