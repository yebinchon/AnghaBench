
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mbx_fifo {int tail; int head; } ;



__attribute__((used)) static void fm10k_fifo_drop_all(struct fm10k_mbx_fifo *fifo)
{
 fifo->head = fifo->tail;
}
