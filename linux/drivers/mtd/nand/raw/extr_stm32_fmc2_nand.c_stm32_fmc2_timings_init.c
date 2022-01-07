
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_fmc2_timings {int thiz; int thold_att; int twait; int tset_att; int thold_mem; int tset_mem; int tar; int tclr; } ;
struct stm32_fmc2_nfc {scalar_t__ io_base; } ;
struct stm32_fmc2_nand {struct stm32_fmc2_timings timings; } ;
struct nand_chip {int controller; } ;


 scalar_t__ FMC2_PATT ;
 int FMC2_PATT_ATTHIZ (int ) ;
 int FMC2_PATT_ATTHOLD (int ) ;
 int FMC2_PATT_ATTSET (int ) ;
 int FMC2_PATT_ATTWAIT (int ) ;
 scalar_t__ FMC2_PCR ;
 int FMC2_PCR_TAR (int ) ;
 int FMC2_PCR_TAR_MASK ;
 int FMC2_PCR_TCLR (int ) ;
 int FMC2_PCR_TCLR_MASK ;
 scalar_t__ FMC2_PMEM ;
 int FMC2_PMEM_MEMHIZ (int ) ;
 int FMC2_PMEM_MEMHOLD (int ) ;
 int FMC2_PMEM_MEMSET (int ) ;
 int FMC2_PMEM_MEMWAIT (int ) ;
 int readl_relaxed (scalar_t__) ;
 struct stm32_fmc2_nand* to_fmc2_nand (struct nand_chip*) ;
 struct stm32_fmc2_nfc* to_stm32_nfc (int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void stm32_fmc2_timings_init(struct nand_chip *chip)
{
 struct stm32_fmc2_nfc *fmc2 = to_stm32_nfc(chip->controller);
 struct stm32_fmc2_nand *nand = to_fmc2_nand(chip);
 struct stm32_fmc2_timings *timings = &nand->timings;
 u32 pcr = readl_relaxed(fmc2->io_base + FMC2_PCR);
 u32 pmem, patt;


 pcr &= ~FMC2_PCR_TCLR_MASK;
 pcr |= FMC2_PCR_TCLR(timings->tclr);
 pcr &= ~FMC2_PCR_TAR_MASK;
 pcr |= FMC2_PCR_TAR(timings->tar);


 pmem = FMC2_PMEM_MEMSET(timings->tset_mem);
 pmem |= FMC2_PMEM_MEMWAIT(timings->twait);
 pmem |= FMC2_PMEM_MEMHOLD(timings->thold_mem);
 pmem |= FMC2_PMEM_MEMHIZ(timings->thiz);


 patt = FMC2_PATT_ATTSET(timings->tset_att);
 patt |= FMC2_PATT_ATTWAIT(timings->twait);
 patt |= FMC2_PATT_ATTHOLD(timings->thold_att);
 patt |= FMC2_PATT_ATTHIZ(timings->thiz);

 writel_relaxed(pcr, fmc2->io_base + FMC2_PCR);
 writel_relaxed(pmem, fmc2->io_base + FMC2_PMEM);
 writel_relaxed(patt, fmc2->io_base + FMC2_PATT);
}
