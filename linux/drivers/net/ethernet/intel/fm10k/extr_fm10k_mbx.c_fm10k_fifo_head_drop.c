
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fm10k_mbx_fifo {int head; } ;


 scalar_t__ fm10k_fifo_head_len (struct fm10k_mbx_fifo*) ;

__attribute__((used)) static u16 fm10k_fifo_head_drop(struct fm10k_mbx_fifo *fifo)
{
 u16 len = fm10k_fifo_head_len(fifo);


 fifo->head += len;

 return len;
}
