
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sxgbe_tx_queue {scalar_t__ cur_tx; scalar_t__ dirty_tx; } ;



__attribute__((used)) static inline u32 sxgbe_tx_avail(struct sxgbe_tx_queue *queue, int tx_qsize)
{
 return queue->dirty_tx + tx_qsize - queue->cur_tx - 1;
}
