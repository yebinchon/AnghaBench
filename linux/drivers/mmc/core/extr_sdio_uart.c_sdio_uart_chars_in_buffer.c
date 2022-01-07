
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {int xmit_fifo; } ;


 int kfifo_len (int *) ;

__attribute__((used)) static int sdio_uart_chars_in_buffer(struct tty_struct *tty)
{
 struct sdio_uart_port *port = tty->driver_data;
 return kfifo_len(&port->xmit_fifo);
}
