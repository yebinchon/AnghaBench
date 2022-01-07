
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {size_t irq_level; int * channel; int last_irq_cpu; int irq_soft_enabled; int net_dev; } ;
struct efx_msi_context {size_t index; struct efx_nic* efx; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int READ_ONCE (int ) ;
 int efx_schedule_channel_irq (int ) ;
 int intr ;
 scalar_t__ likely (int ) ;
 int netif_vdbg (struct efx_nic*,int ,int ,char*,int,int ) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static irqreturn_t efx_ef10_msi_interrupt(int irq, void *dev_id)
{
 struct efx_msi_context *context = dev_id;
 struct efx_nic *efx = context->efx;

 netif_vdbg(efx, intr, efx->net_dev,
     "IRQ %d on CPU %d\n", irq, raw_smp_processor_id());

 if (likely(READ_ONCE(efx->irq_soft_enabled))) {

  if (context->index == efx->irq_level)
   efx->last_irq_cpu = raw_smp_processor_id();


  efx_schedule_channel_irq(efx->channel[context->index]);
 }

 return IRQ_HANDLED;
}
