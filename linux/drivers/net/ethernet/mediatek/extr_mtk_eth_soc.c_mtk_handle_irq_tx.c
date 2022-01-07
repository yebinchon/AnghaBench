
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int tx_napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MTK_TX_DONE_INT ;
 int __napi_schedule (int *) ;
 scalar_t__ likely (int ) ;
 int mtk_tx_irq_disable (struct mtk_eth*,int ) ;
 int napi_schedule_prep (int *) ;

__attribute__((used)) static irqreturn_t mtk_handle_irq_tx(int irq, void *_eth)
{
 struct mtk_eth *eth = _eth;

 if (likely(napi_schedule_prep(&eth->tx_napi))) {
  __napi_schedule(&eth->tx_napi);
  mtk_tx_irq_disable(eth, MTK_TX_DONE_INT);
 }

 return IRQ_HANDLED;
}
