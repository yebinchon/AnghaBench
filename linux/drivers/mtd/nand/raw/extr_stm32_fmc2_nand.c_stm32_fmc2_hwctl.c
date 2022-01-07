
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32_fmc2_nfc {int complete; scalar_t__ io_base; } ;
struct TYPE_2__ {scalar_t__ strength; } ;
struct nand_chip {TYPE_1__ ecc; int controller; } ;


 scalar_t__ FMC2_ECC_HAM ;
 scalar_t__ FMC2_PCR ;
 int FMC2_PCR_WEN ;
 int NAND_ECC_WRITE ;
 int readl_relaxed (scalar_t__) ;
 int reinit_completion (int *) ;
 int stm32_fmc2_clear_bch_irq (struct stm32_fmc2_nfc*) ;
 int stm32_fmc2_enable_bch_irq (struct stm32_fmc2_nfc*,int) ;
 int stm32_fmc2_set_ecc (struct stm32_fmc2_nfc*,int) ;
 struct stm32_fmc2_nfc* to_stm32_nfc (int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void stm32_fmc2_hwctl(struct nand_chip *chip, int mode)
{
 struct stm32_fmc2_nfc *fmc2 = to_stm32_nfc(chip->controller);

 stm32_fmc2_set_ecc(fmc2, 0);

 if (chip->ecc.strength != FMC2_ECC_HAM) {
  u32 pcr = readl_relaxed(fmc2->io_base + FMC2_PCR);

  if (mode == NAND_ECC_WRITE)
   pcr |= FMC2_PCR_WEN;
  else
   pcr &= ~FMC2_PCR_WEN;
  writel_relaxed(pcr, fmc2->io_base + FMC2_PCR);

  reinit_completion(&fmc2->complete);
  stm32_fmc2_clear_bch_irq(fmc2);
  stm32_fmc2_enable_bch_irq(fmc2, mode);
 }

 stm32_fmc2_set_ecc(fmc2, 1);
}
