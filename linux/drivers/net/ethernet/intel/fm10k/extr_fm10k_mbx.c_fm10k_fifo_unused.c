
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fm10k_mbx_fifo {scalar_t__ tail; scalar_t__ head; scalar_t__ size; } ;



__attribute__((used)) static u16 fm10k_fifo_unused(struct fm10k_mbx_fifo *fifo)
{
 return fifo->size + fifo->head - fifo->tail;
}
