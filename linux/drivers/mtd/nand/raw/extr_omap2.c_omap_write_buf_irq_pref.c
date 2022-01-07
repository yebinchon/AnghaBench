
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {int options; } ;
struct TYPE_3__ {int gpmc_prefetch_status; } ;
struct omap_nand_info {int buf_len; TYPE_2__ nand; int gpmc_cs; TYPE_1__ reg; int comp; int gpmc_irq_fifo; int gpmc_irq_count; int * buf; int iomode; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int oobsize; } ;


 int NAND_BUSWIDTH_16 ;
 int OMAP_NAND_IO_WRITE ;
 int OMAP_NAND_TIMEOUT_MS ;
 int PREFETCH_FIFOTHRESHOLD_MAX ;
 scalar_t__ PREFETCH_STATUS_COUNT (scalar_t__) ;
 int cpu_relax () ;
 int enable_irq (int ) ;
 int init_completion (int *) ;
 unsigned long loops_per_jiffy ;
 unsigned long msecs_to_jiffies (int ) ;
 struct omap_nand_info* mtd_to_omap (struct mtd_info*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int omap_prefetch_enable (int ,int,int,int,int,struct omap_nand_info*) ;
 int omap_prefetch_reset (int ,struct omap_nand_info*) ;
 int omap_write_buf16 (struct mtd_info*,int const*,int) ;
 int omap_write_buf8 (struct mtd_info*,int const*,int) ;
 int omap_write_buf_pref (struct nand_chip*,int const*,int) ;
 scalar_t__ readl (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void omap_write_buf_irq_pref(struct nand_chip *chip, const u_char *buf,
        int len)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct omap_nand_info *info = mtd_to_omap(mtd);
 int ret = 0;
 unsigned long tim, limit;
 u32 val;

 if (len <= mtd->oobsize) {
  omap_write_buf_pref(chip, buf, len);
  return;
 }

 info->iomode = OMAP_NAND_IO_WRITE;
 info->buf = (u_char *) buf;
 init_completion(&info->comp);


 ret = omap_prefetch_enable(info->gpmc_cs,
  (PREFETCH_FIFOTHRESHOLD_MAX * 3) / 8, 0x0, len, 0x1, info);
 if (ret)

  goto out_copy;

 info->buf_len = len;

 enable_irq(info->gpmc_irq_count);
 enable_irq(info->gpmc_irq_fifo);


 wait_for_completion(&info->comp);


 tim = 0;
 limit = (loops_per_jiffy * msecs_to_jiffies(OMAP_NAND_TIMEOUT_MS));
 do {
  val = readl(info->reg.gpmc_prefetch_status);
  val = PREFETCH_STATUS_COUNT(val);
  cpu_relax();
 } while (val && (tim++ < limit));


 omap_prefetch_reset(info->gpmc_cs, info);
 return;

out_copy:
 if (info->nand.options & NAND_BUSWIDTH_16)
  omap_write_buf16(mtd, buf, len);
 else
  omap_write_buf8(mtd, buf, len);
}
