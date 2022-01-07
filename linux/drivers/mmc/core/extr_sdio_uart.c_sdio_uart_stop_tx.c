
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {int ier; } ;


 int UART_IER ;
 int UART_IER_THRI ;
 int sdio_out (struct sdio_uart_port*,int ,int) ;

__attribute__((used)) static void sdio_uart_stop_tx(struct sdio_uart_port *port)
{
 if (port->ier & UART_IER_THRI) {
  port->ier &= ~UART_IER_THRI;
  sdio_out(port, UART_IER, port->ier);
 }
}
