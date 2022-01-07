
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {scalar_t__ regs_offset; int func; } ;


 int sdio_writeb (int ,int,scalar_t__,int *) ;

__attribute__((used)) static inline void sdio_out(struct sdio_uart_port *port, int offset, int value)
{
 sdio_writeb(port->func, value, port->regs_offset + offset, ((void*)0));
}
