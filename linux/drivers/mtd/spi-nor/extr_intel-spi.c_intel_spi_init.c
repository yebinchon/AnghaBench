
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_spi {int swseq_reg; int writeable; int erase_64k; int swseq_erase; int locked; int* opcodes; scalar_t__ sregs; scalar_t__ base; TYPE_1__* info; int pr_num; int nregions; scalar_t__ pregs; } ;
struct TYPE_2__ {int type; } ;


 int ARRAY_SIZE (int*) ;
 int BXT_FREG_NUM ;
 scalar_t__ BXT_PR ;
 int BXT_PR_NUM ;
 scalar_t__ BXT_SSFSTS_CTL ;
 scalar_t__ BYT_BCR ;
 int BYT_BCR_WPD ;
 int BYT_FREG_NUM ;
 scalar_t__ BYT_PR ;
 int BYT_PR_NUM ;
 scalar_t__ BYT_SSFSTS_CTL ;
 int EINVAL ;
 int ERASE_64K_OPCODE_MASK ;
 int ERASE_OPCODE_MASK ;
 scalar_t__ HSFSTS_CTL ;
 int HSFSTS_CTL_FLOCKDN ;
 int HSFSTS_CTL_FSMIE ;



 int LPT_FREG_NUM ;
 scalar_t__ LPT_PR ;
 int LPT_PR_NUM ;
 scalar_t__ LPT_SSFSTS_CTL ;
 scalar_t__ LVSCC ;
 scalar_t__ OPMENU0 ;
 scalar_t__ OPMENU1 ;
 scalar_t__ SSFSTS_CTL ;
 int SSFSTS_CTL_FSMIE ;
 scalar_t__ UVSCC ;
 int intel_spi_dump_regs (struct intel_spi*) ;
 int readl (scalar_t__) ;
 int writeable ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int intel_spi_init(struct intel_spi *ispi)
{
 u32 opmenu0, opmenu1, lvscc, uvscc, val;
 int i;

 switch (ispi->info->type) {
 case 129:
  ispi->sregs = ispi->base + BYT_SSFSTS_CTL;
  ispi->pregs = ispi->base + BYT_PR;
  ispi->nregions = BYT_FREG_NUM;
  ispi->pr_num = BYT_PR_NUM;
  ispi->swseq_reg = 1;

  if (writeable) {

   val = readl(ispi->base + BYT_BCR);
   if (!(val & BYT_BCR_WPD)) {
    val |= BYT_BCR_WPD;
    writel(val, ispi->base + BYT_BCR);
    val = readl(ispi->base + BYT_BCR);
   }

   ispi->writeable = !!(val & BYT_BCR_WPD);
  }

  break;

 case 128:
  ispi->sregs = ispi->base + LPT_SSFSTS_CTL;
  ispi->pregs = ispi->base + LPT_PR;
  ispi->nregions = LPT_FREG_NUM;
  ispi->pr_num = LPT_PR_NUM;
  ispi->swseq_reg = 1;
  break;

 case 130:
  ispi->sregs = ispi->base + BXT_SSFSTS_CTL;
  ispi->pregs = ispi->base + BXT_PR;
  ispi->nregions = BXT_FREG_NUM;
  ispi->pr_num = BXT_PR_NUM;
  ispi->erase_64k = 1;
  break;

 default:
  return -EINVAL;
 }


 val = readl(ispi->base + HSFSTS_CTL);
 val &= ~HSFSTS_CTL_FSMIE;
 writel(val, ispi->base + HSFSTS_CTL);
 lvscc = readl(ispi->base + LVSCC);
 uvscc = readl(ispi->base + UVSCC);
 if (!(lvscc & ERASE_OPCODE_MASK) || !(uvscc & ERASE_OPCODE_MASK))
  ispi->swseq_erase = 1;

 if (ispi->info->type == 130 && !ispi->swseq_erase)
  if (!(lvscc & ERASE_64K_OPCODE_MASK) ||
      !(uvscc & ERASE_64K_OPCODE_MASK))
   ispi->erase_64k = 0;






 if (ispi->swseq_reg) {

  val = readl(ispi->sregs + SSFSTS_CTL);
  val &= ~SSFSTS_CTL_FSMIE;
  writel(val, ispi->sregs + SSFSTS_CTL);
 }


 val = readl(ispi->base + HSFSTS_CTL);
 ispi->locked = !!(val & HSFSTS_CTL_FLOCKDN);

 if (ispi->locked) {





  opmenu0 = readl(ispi->sregs + OPMENU0);
  opmenu1 = readl(ispi->sregs + OPMENU1);

  if (opmenu0 && opmenu1) {
   for (i = 0; i < ARRAY_SIZE(ispi->opcodes) / 2; i++) {
    ispi->opcodes[i] = opmenu0 >> i * 8;
    ispi->opcodes[i + 4] = opmenu1 >> i * 8;
   }
  }
 }

 intel_spi_dump_regs(ispi);

 return 0;
}
