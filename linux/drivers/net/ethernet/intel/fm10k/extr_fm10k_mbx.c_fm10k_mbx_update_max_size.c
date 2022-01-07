
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fm10k_mbx_info {int tx_dropped; int tx; scalar_t__ max_size; } ;


 int fm10k_fifo_head_drop (int *) ;
 scalar_t__ fm10k_fifo_head_len (int *) ;

__attribute__((used)) static void fm10k_mbx_update_max_size(struct fm10k_mbx_info *mbx, u16 size)
{
 u16 len;

 mbx->max_size = size;


 for (len = fm10k_fifo_head_len(&mbx->tx);
      len > size;
      len = fm10k_fifo_head_len(&mbx->tx)) {
  fm10k_fifo_head_drop(&mbx->tx);
  mbx->tx_dropped++;
 }
}
