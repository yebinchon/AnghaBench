
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct tty_struct {scalar_t__ hw_stopped; scalar_t__ stopped; } ;
struct TYPE_2__ {int tx; } ;
struct kfifo {int dummy; } ;
struct sdio_uart_port {TYPE_1__ icount; int write_lock; int port; scalar_t__ x_char; struct kfifo xmit_fifo; } ;


 int UART_TX ;
 int WAKEUP_CHARS ;
 int kfifo_len (struct kfifo*) ;
 int kfifo_out_locked (struct kfifo*,scalar_t__*,int,int *) ;
 int sdio_out (struct sdio_uart_port*,int ,scalar_t__) ;
 int sdio_uart_stop_tx (struct sdio_uart_port*) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void sdio_uart_transmit_chars(struct sdio_uart_port *port)
{
 struct kfifo *xmit = &port->xmit_fifo;
 int count;
 struct tty_struct *tty;
 u8 iobuf[16];
 int len;

 if (port->x_char) {
  sdio_out(port, UART_TX, port->x_char);
  port->icount.tx++;
  port->x_char = 0;
  return;
 }

 tty = tty_port_tty_get(&port->port);

 if (tty == ((void*)0) || !kfifo_len(xmit) ||
    tty->stopped || tty->hw_stopped) {
  sdio_uart_stop_tx(port);
  tty_kref_put(tty);
  return;
 }

 len = kfifo_out_locked(xmit, iobuf, 16, &port->write_lock);
 for (count = 0; count < len; count++) {
  sdio_out(port, UART_TX, iobuf[count]);
  port->icount.tx++;
 }

 len = kfifo_len(xmit);
 if (len < WAKEUP_CHARS) {
  tty_wakeup(tty);
  if (len == 0)
   sdio_uart_stop_tx(port);
 }
 tty_kref_put(tty);
}
