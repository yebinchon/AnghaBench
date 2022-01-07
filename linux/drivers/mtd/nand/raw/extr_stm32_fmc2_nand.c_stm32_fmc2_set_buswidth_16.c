
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_fmc2_nfc {scalar_t__ io_base; } ;


 scalar_t__ FMC2_PCR ;
 int FMC2_PCR_PWID (int ) ;
 int FMC2_PCR_PWID_BUSWIDTH_16 ;
 int FMC2_PCR_PWID_MASK ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void stm32_fmc2_set_buswidth_16(struct stm32_fmc2_nfc *fmc2, bool set)
{
 u32 pcr = readl_relaxed(fmc2->io_base + FMC2_PCR);

 pcr &= ~FMC2_PCR_PWID_MASK;
 if (set)
  pcr |= FMC2_PCR_PWID(FMC2_PCR_PWID_BUSWIDTH_16);
 writel_relaxed(pcr, fmc2->io_base + FMC2_PCR);
}
