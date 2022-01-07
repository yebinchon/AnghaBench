
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mbx_info {int tx; } ;


 int fm10k_fifo_empty (int *) ;

__attribute__((used)) static bool fm10k_mbx_tx_complete(struct fm10k_mbx_info *mbx)
{
 return fm10k_fifo_empty(&mbx->tx);
}
