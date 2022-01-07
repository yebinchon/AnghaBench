
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_fmc2_nfc {int irq_state; scalar_t__ io_base; } ;


 scalar_t__ FMC2_BCHIER ;
 int FMC2_BCHIER_DERIE ;
 int FMC2_BCHIER_EPBRIE ;
 int FMC2_IRQ_UNKNOWN ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void stm32_fmc2_disable_bch_irq(struct stm32_fmc2_nfc *fmc2)
{
 u32 bchier = readl_relaxed(fmc2->io_base + FMC2_BCHIER);

 bchier &= ~FMC2_BCHIER_DERIE;
 bchier &= ~FMC2_BCHIER_EPBRIE;

 writel_relaxed(bchier, fmc2->io_base + FMC2_BCHIER);

 fmc2->irq_state = FMC2_IRQ_UNKNOWN;
}
