
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {int ier; int read_status_mask; } ;


 int UART_IER ;
 int UART_IER_RLSI ;
 int UART_LSR_DR ;
 int sdio_out (struct sdio_uart_port*,int ,int ) ;

__attribute__((used)) static void sdio_uart_stop_rx(struct sdio_uart_port *port)
{
 port->ier &= ~UART_IER_RLSI;
 port->read_status_mask &= ~UART_LSR_DR;
 sdio_out(port, UART_IER, port->ier);
}
