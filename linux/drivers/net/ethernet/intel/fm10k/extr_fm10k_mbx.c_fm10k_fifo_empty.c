
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mbx_fifo {scalar_t__ head; scalar_t__ tail; } ;



__attribute__((used)) static bool fm10k_fifo_empty(struct fm10k_mbx_fifo *fifo)
{
 return fifo->head == fifo->tail;
}
