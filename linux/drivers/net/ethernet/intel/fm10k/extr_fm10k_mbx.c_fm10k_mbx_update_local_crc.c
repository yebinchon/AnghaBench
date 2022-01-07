
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fm10k_mbx_info {int local; int tx; int pulled; int tail; scalar_t__ tail_len; } ;


 int fm10k_fifo_crc (int *,scalar_t__,scalar_t__,int ) ;
 scalar_t__ fm10k_fifo_head_offset (int *,int ) ;
 scalar_t__ fm10k_mbx_index_len (struct fm10k_mbx_info*,scalar_t__,int ) ;

__attribute__((used)) static void fm10k_mbx_update_local_crc(struct fm10k_mbx_info *mbx, u16 head)
{
 u16 len = mbx->tail_len - fm10k_mbx_index_len(mbx, head, mbx->tail);


 head = fm10k_fifo_head_offset(&mbx->tx, mbx->pulled);


 mbx->local = fm10k_fifo_crc(&mbx->tx, head, len, mbx->local);
}
