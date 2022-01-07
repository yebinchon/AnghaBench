
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_fmc2_nfc {int cs_sel; scalar_t__ io_base; } ;


 scalar_t__ FMC2_BCR1 ;
 int FMC2_BCR1_FMC2EN ;
 scalar_t__ FMC2_PATT ;
 int FMC2_PATT_DEFAULT ;
 scalar_t__ FMC2_PCR ;
 int FMC2_PCR_BCHECC ;
 int FMC2_PCR_ECCALG ;
 int FMC2_PCR_ECCEN ;
 int FMC2_PCR_ECCSS (int ) ;
 int FMC2_PCR_ECCSS_2048 ;
 int FMC2_PCR_ECCSS_MASK ;
 int FMC2_PCR_PBKEN ;
 int FMC2_PCR_PWAITEN ;
 int FMC2_PCR_PWID_MASK ;
 int FMC2_PCR_TAR (int ) ;
 int FMC2_PCR_TAR_DEFAULT ;
 int FMC2_PCR_TAR_MASK ;
 int FMC2_PCR_TCLR (int ) ;
 int FMC2_PCR_TCLR_DEFAULT ;
 int FMC2_PCR_TCLR_MASK ;
 int FMC2_PCR_WEN ;
 scalar_t__ FMC2_PMEM ;
 int FMC2_PMEM_DEFAULT ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void stm32_fmc2_init(struct stm32_fmc2_nfc *fmc2)
{
 u32 pcr = readl_relaxed(fmc2->io_base + FMC2_PCR);
 u32 bcr1 = readl_relaxed(fmc2->io_base + FMC2_BCR1);


 fmc2->cs_sel = -1;


 pcr |= FMC2_PCR_PWAITEN;
 pcr |= FMC2_PCR_PBKEN;


 pcr &= ~FMC2_PCR_PWID_MASK;


 pcr &= ~FMC2_PCR_ECCEN;


 pcr &= ~FMC2_PCR_ECCALG;
 pcr &= ~FMC2_PCR_BCHECC;
 pcr &= ~FMC2_PCR_WEN;


 pcr &= ~FMC2_PCR_ECCSS_MASK;
 pcr |= FMC2_PCR_ECCSS(FMC2_PCR_ECCSS_2048);


 pcr &= ~FMC2_PCR_TCLR_MASK;
 pcr |= FMC2_PCR_TCLR(FMC2_PCR_TCLR_DEFAULT);
 pcr &= ~FMC2_PCR_TAR_MASK;
 pcr |= FMC2_PCR_TAR(FMC2_PCR_TAR_DEFAULT);


 bcr1 |= FMC2_BCR1_FMC2EN;

 writel_relaxed(bcr1, fmc2->io_base + FMC2_BCR1);
 writel_relaxed(pcr, fmc2->io_base + FMC2_PCR);
 writel_relaxed(FMC2_PMEM_DEFAULT, fmc2->io_base + FMC2_PMEM);
 writel_relaxed(FMC2_PATT_DEFAULT, fmc2->io_base + FMC2_PATT);
}
