
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {int port; } ;


 int tty_port_put (int *) ;

__attribute__((used)) static void sdio_uart_port_put(struct sdio_uart_port *port)
{
 tty_port_put(&port->port);
}
