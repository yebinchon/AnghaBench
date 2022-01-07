
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_fmc2_nfc {scalar_t__ io_base; int irq_state; } ;


 scalar_t__ FMC2_BCHIER ;
 int FMC2_BCHIER_DERIE ;
 int FMC2_BCHIER_EPBRIE ;
 int FMC2_IRQ_BCH ;
 int NAND_ECC_WRITE ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void stm32_fmc2_enable_bch_irq(struct stm32_fmc2_nfc *fmc2,
          int mode)
{
 u32 bchier = readl_relaxed(fmc2->io_base + FMC2_BCHIER);

 if (mode == NAND_ECC_WRITE)
  bchier |= FMC2_BCHIER_EPBRIE;
 else
  bchier |= FMC2_BCHIER_DERIE;

 fmc2->irq_state = FMC2_IRQ_BCH;

 writel_relaxed(bchier, fmc2->io_base + FMC2_BCHIER);
}
