
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_tx_fifo {scalar_t__ head; scalar_t__ size; } ;



__attribute__((used)) static int gve_tx_fifo_pad_alloc_one_frag(struct gve_tx_fifo *fifo,
       size_t bytes)
{
 return (fifo->head + bytes < fifo->size) ? 0 : fifo->size - fifo->head;
}
