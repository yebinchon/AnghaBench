
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_host_tx_ring {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t qlcnic_msix_tx_intr(int irq, void *data)
{
 struct qlcnic_host_tx_ring *tx_ring = data;

 napi_schedule(&tx_ring->napi);
 return IRQ_HANDLED;
}
