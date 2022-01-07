
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int tx_int_status_reg; int tx_int_mask_reg; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MTK_PDMA_INT_MASK ;
 int MTK_PDMA_INT_STATUS ;
 int MTK_RX_DONE_INT ;
 int MTK_TX_DONE_INT ;
 int mtk_handle_irq_rx (int,void*) ;
 int mtk_handle_irq_tx (int,void*) ;
 int mtk_r32 (struct mtk_eth*,int ) ;

__attribute__((used)) static irqreturn_t mtk_handle_irq(int irq, void *_eth)
{
 struct mtk_eth *eth = _eth;

 if (mtk_r32(eth, MTK_PDMA_INT_MASK) & MTK_RX_DONE_INT) {
  if (mtk_r32(eth, MTK_PDMA_INT_STATUS) & MTK_RX_DONE_INT)
   mtk_handle_irq_rx(irq, _eth);
 }
 if (mtk_r32(eth, eth->tx_int_mask_reg) & MTK_TX_DONE_INT) {
  if (mtk_r32(eth, eth->tx_int_status_reg) & MTK_TX_DONE_INT)
   mtk_handle_irq_tx(irq, _eth);
 }

 return IRQ_HANDLED;
}
