
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_desc_ring {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int __napi_schedule (int *) ;
 int disable_irq_nosync (int const) ;
 scalar_t__ napi_schedule_prep (int *) ;

__attribute__((used)) static irqreturn_t xgene_enet_rx_irq(const int irq, void *data)
{
 struct xgene_enet_desc_ring *rx_ring = data;

 if (napi_schedule_prep(&rx_ring->napi)) {
  disable_irq_nosync(irq);
  __napi_schedule(&rx_ring->napi);
 }

 return IRQ_HANDLED;
}
