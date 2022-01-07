
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int lock; } ;


 int CIR_WAKE_ENABLE_BIT ;
 int CIR_WAKE_IRCON ;
 int CIR_WAKE_IRCON_MODE0 ;
 int CIR_WAKE_IRCON_R ;
 int CIR_WAKE_IRCON_RXEN ;
 int CIR_WAKE_IRCON_RXINV ;
 int CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL ;
 int CIR_WAKE_IREN ;
 int CIR_WAKE_IRSTS ;
 int CR_ACPI_CIR_WAKE ;
 int CR_ACPI_IRQ_EVENTS2 ;
 int CR_LOGICAL_DEV_EN ;
 int LOGICAL_DEV_ACPI ;
 int LOGICAL_DEV_CIR_WAKE ;
 int LOGICAL_DEV_ENABLE ;
 int PME_INTR_CIR_PASS_BIT ;
 int nvt_cir_wake_reg_write (struct nvt_dev*,int,int ) ;
 int nvt_cr_write (struct nvt_dev*,int ,int ) ;
 int nvt_efm_disable (struct nvt_dev*) ;
 int nvt_efm_enable (struct nvt_dev*) ;
 int nvt_select_logical_dev (struct nvt_dev*,int ) ;
 int nvt_set_reg_bit (struct nvt_dev*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nvt_enable_wake(struct nvt_dev *nvt)
{
 unsigned long flags;

 nvt_efm_enable(nvt);

 nvt_select_logical_dev(nvt, LOGICAL_DEV_ACPI);
 nvt_set_reg_bit(nvt, CIR_WAKE_ENABLE_BIT, CR_ACPI_CIR_WAKE);
 nvt_set_reg_bit(nvt, PME_INTR_CIR_PASS_BIT, CR_ACPI_IRQ_EVENTS2);

 nvt_select_logical_dev(nvt, LOGICAL_DEV_CIR_WAKE);
 nvt_cr_write(nvt, LOGICAL_DEV_ENABLE, CR_LOGICAL_DEV_EN);

 nvt_efm_disable(nvt);

 spin_lock_irqsave(&nvt->lock, flags);

 nvt_cir_wake_reg_write(nvt, CIR_WAKE_IRCON_MODE0 | CIR_WAKE_IRCON_RXEN |
          CIR_WAKE_IRCON_R | CIR_WAKE_IRCON_RXINV |
          CIR_WAKE_IRCON_SAMPLE_PERIOD_SEL,
          CIR_WAKE_IRCON);
 nvt_cir_wake_reg_write(nvt, 0xff, CIR_WAKE_IRSTS);
 nvt_cir_wake_reg_write(nvt, 0, CIR_WAKE_IREN);

 spin_unlock_irqrestore(&nvt->lock, flags);
}
