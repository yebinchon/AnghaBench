
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32_fmc2_nfc {scalar_t__ io_base; } ;
struct TYPE_2__ {scalar_t__ strength; } ;
struct nand_chip {int options; TYPE_1__ ecc; int controller; } ;


 scalar_t__ FMC2_ECC_BCH4 ;
 scalar_t__ FMC2_ECC_BCH8 ;
 scalar_t__ FMC2_PCR ;
 int FMC2_PCR_BCHECC ;
 int FMC2_PCR_ECCALG ;
 int FMC2_PCR_ECCSS (int ) ;
 int FMC2_PCR_ECCSS_512 ;
 int FMC2_PCR_ECCSS_MASK ;
 int FMC2_PCR_PWID (int ) ;
 int FMC2_PCR_PWID_BUSWIDTH_16 ;
 int FMC2_PCR_PWID_MASK ;
 int NAND_BUSWIDTH_16 ;
 int readl_relaxed (scalar_t__) ;
 struct stm32_fmc2_nfc* to_stm32_nfc (int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void stm32_fmc2_setup(struct nand_chip *chip)
{
 struct stm32_fmc2_nfc *fmc2 = to_stm32_nfc(chip->controller);
 u32 pcr = readl_relaxed(fmc2->io_base + FMC2_PCR);


 pcr &= ~FMC2_PCR_ECCALG;
 pcr &= ~FMC2_PCR_BCHECC;
 if (chip->ecc.strength == FMC2_ECC_BCH8) {
  pcr |= FMC2_PCR_ECCALG;
  pcr |= FMC2_PCR_BCHECC;
 } else if (chip->ecc.strength == FMC2_ECC_BCH4) {
  pcr |= FMC2_PCR_ECCALG;
 }


 pcr &= ~FMC2_PCR_PWID_MASK;
 if (chip->options & NAND_BUSWIDTH_16)
  pcr |= FMC2_PCR_PWID(FMC2_PCR_PWID_BUSWIDTH_16);


 pcr &= ~FMC2_PCR_ECCSS_MASK;
 pcr |= FMC2_PCR_ECCSS(FMC2_PCR_ECCSS_512);

 writel_relaxed(pcr, fmc2->io_base + FMC2_PCR);
}
