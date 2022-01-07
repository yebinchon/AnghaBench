
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_tx_fifo {int available; } ;


 size_t atomic_read (int *) ;

__attribute__((used)) static bool gve_tx_fifo_can_alloc(struct gve_tx_fifo *fifo, size_t bytes)
{
 return (atomic_read(&fifo->available) <= bytes) ? 0 : 1;
}
