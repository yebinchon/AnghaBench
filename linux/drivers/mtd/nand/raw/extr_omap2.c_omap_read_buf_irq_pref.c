
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int options; } ;
struct omap_nand_info {int buf_len; TYPE_1__ nand; int gpmc_cs; int comp; int gpmc_irq_fifo; int gpmc_irq_count; int * buf; int iomode; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int oobsize; } ;


 int NAND_BUSWIDTH_16 ;
 int OMAP_NAND_IO_READ ;
 int PREFETCH_FIFOTHRESHOLD_MAX ;
 int enable_irq (int ) ;
 int init_completion (int *) ;
 struct omap_nand_info* mtd_to_omap (struct mtd_info*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int omap_prefetch_enable (int ,int,int,int,int,struct omap_nand_info*) ;
 int omap_prefetch_reset (int ,struct omap_nand_info*) ;
 int omap_read_buf16 (struct mtd_info*,int *,int) ;
 int omap_read_buf8 (struct mtd_info*,int *,int) ;
 int omap_read_buf_pref (struct nand_chip*,int *,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void omap_read_buf_irq_pref(struct nand_chip *chip, u_char *buf,
       int len)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct omap_nand_info *info = mtd_to_omap(mtd);
 int ret = 0;

 if (len <= mtd->oobsize) {
  omap_read_buf_pref(chip, buf, len);
  return;
 }

 info->iomode = OMAP_NAND_IO_READ;
 info->buf = buf;
 init_completion(&info->comp);


 ret = omap_prefetch_enable(info->gpmc_cs,
   PREFETCH_FIFOTHRESHOLD_MAX/2, 0x0, len, 0x0, info);
 if (ret)

  goto out_copy;

 info->buf_len = len;

 enable_irq(info->gpmc_irq_count);
 enable_irq(info->gpmc_irq_fifo);


 wait_for_completion(&info->comp);


 omap_prefetch_reset(info->gpmc_cs, info);
 return;

out_copy:
 if (info->nand.options & NAND_BUSWIDTH_16)
  omap_read_buf16(mtd, buf, len);
 else
  omap_read_buf8(mtd, buf, len);
}
