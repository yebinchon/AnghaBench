
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tx_queue {int tx_curr_desc; int index; scalar_t__ tx_desc_dma; } ;
struct tx_desc {int dummy; } ;
struct mv643xx_eth_private {int dummy; } ;


 int TXQ_CURRENT_DESC_PTR (int ) ;
 struct mv643xx_eth_private* txq_to_mp (struct tx_queue*) ;
 int wrlp (struct mv643xx_eth_private*,int ,scalar_t__) ;

__attribute__((used)) static void txq_reset_hw_ptr(struct tx_queue *txq)
{
 struct mv643xx_eth_private *mp = txq_to_mp(txq);
 u32 addr;

 addr = (u32)txq->tx_desc_dma;
 addr += txq->tx_curr_desc * sizeof(struct tx_desc);
 wrlp(mp, TXQ_CURRENT_DESC_PTR(txq->index), addr);
}
