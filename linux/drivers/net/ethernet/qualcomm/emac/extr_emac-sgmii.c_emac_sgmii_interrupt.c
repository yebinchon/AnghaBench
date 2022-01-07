
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct emac_sgmii {int decode_error_count; scalar_t__ base; } ;
struct emac_adapter {int work_thread; struct emac_sgmii phy; } ;
typedef int irqreturn_t ;


 int DECODE_ERROR_LIMIT ;
 scalar_t__ EMAC_SGMII_PHY_INTERRUPT_STATUS ;
 int IRQ_HANDLED ;
 int SGMII_ISR_MASK ;
 int SGMII_PHY_INTERRUPT_ERR ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ emac_sgmii_irq_clear (struct emac_adapter*,int) ;
 int readl (scalar_t__) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t emac_sgmii_interrupt(int irq, void *data)
{
 struct emac_adapter *adpt = data;
 struct emac_sgmii *phy = &adpt->phy;
 u8 status;

 status = readl(phy->base + EMAC_SGMII_PHY_INTERRUPT_STATUS);
 status &= SGMII_ISR_MASK;
 if (!status)
  return IRQ_HANDLED;






 if (status & SGMII_PHY_INTERRUPT_ERR) {
  int count;






  count = atomic_inc_return(&phy->decode_error_count);
  if (count == DECODE_ERROR_LIMIT) {
   schedule_work(&adpt->work_thread);
   atomic_set(&phy->decode_error_count, 0);
  }
 } else {

  atomic_set(&phy->decode_error_count, 0);
 }

 if (emac_sgmii_irq_clear(adpt, status))
  schedule_work(&adpt->work_thread);

 return IRQ_HANDLED;
}
