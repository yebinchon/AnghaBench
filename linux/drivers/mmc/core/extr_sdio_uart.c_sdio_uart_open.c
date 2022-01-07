
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {int port; } ;
struct file {int dummy; } ;


 int tty_port_open (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static int sdio_uart_open(struct tty_struct *tty, struct file *filp)
{
 struct sdio_uart_port *port = tty->driver_data;
 return tty_port_open(&port->port, tty, filp);
}
