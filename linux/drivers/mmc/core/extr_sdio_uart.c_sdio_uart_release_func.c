
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_uart_port {scalar_t__ in_sdio_uart_irq; int func; } ;


 scalar_t__ current ;
 scalar_t__ likely (int) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static inline void sdio_uart_release_func(struct sdio_uart_port *port)
{
 if (likely(port->in_sdio_uart_irq != current))
  sdio_release_host(port->func);
}
