
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fm10k_mbx_info {scalar_t__ state; int tx; } ;


 scalar_t__ FM10K_STATE_OPEN ;
 scalar_t__ fm10k_fifo_unused (int *) ;

__attribute__((used)) static bool fm10k_mbx_tx_ready(struct fm10k_mbx_info *mbx, u16 len)
{
 u16 fifo_unused = fm10k_fifo_unused(&mbx->tx);

 return (mbx->state == FM10K_STATE_OPEN) && (fifo_unused >= len);
}
