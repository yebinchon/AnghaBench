
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_fmc2_nfc {scalar_t__ io_base; } ;


 scalar_t__ FMC2_PCR ;
 int FMC2_PCR_ECCEN ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void stm32_fmc2_set_ecc(struct stm32_fmc2_nfc *fmc2, bool enable)
{
 u32 pcr = readl(fmc2->io_base + FMC2_PCR);

 pcr &= ~FMC2_PCR_ECCEN;
 if (enable)
  pcr |= FMC2_PCR_ECCEN;
 writel(pcr, fmc2->io_base + FMC2_PCR);
}
