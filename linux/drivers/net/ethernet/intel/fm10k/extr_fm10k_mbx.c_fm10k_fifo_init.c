
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_mbx_fifo {scalar_t__ tail; scalar_t__ head; int size; int * buffer; } ;



__attribute__((used)) static void fm10k_fifo_init(struct fm10k_mbx_fifo *fifo, u32 *buffer, u16 size)
{
 fifo->buffer = buffer;
 fifo->size = size;
 fifo->head = 0;
 fifo->tail = 0;
}
