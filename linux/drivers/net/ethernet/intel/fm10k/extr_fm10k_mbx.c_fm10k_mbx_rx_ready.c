
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fm10k_mbx_info {int rx; } ;


 scalar_t__ fm10k_fifo_head_len (int *) ;
 scalar_t__ fm10k_fifo_used (int *) ;

__attribute__((used)) static bool fm10k_mbx_rx_ready(struct fm10k_mbx_info *mbx)
{
 u16 msg_size = fm10k_fifo_head_len(&mbx->rx);

 return msg_size && (fm10k_fifo_used(&mbx->rx) >= msg_size);
}
