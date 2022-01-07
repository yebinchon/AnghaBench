
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
typedef void* u32 ;
typedef int u16 ;
struct TYPE_6__ {int gpmc_prefetch_status; } ;
struct TYPE_4__ {int IO_ADDR_W; } ;
struct TYPE_5__ {int options; TYPE_1__ legacy; } ;
struct omap_nand_info {int gpmc_cs; TYPE_3__ reg; TYPE_2__ nand; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;


 int NAND_BUSWIDTH_16 ;
 int OMAP_NAND_TIMEOUT_MS ;
 int PREFETCH_FIFOTHRESHOLD_MAX ;
 void* PREFETCH_STATUS_COUNT (void*) ;
 int PREFETCH_STATUS_FIFO_CNT (int) ;
 int cpu_relax () ;
 int iowrite16 (int ,int ) ;
 unsigned long loops_per_jiffy ;
 unsigned long msecs_to_jiffies (int ) ;
 struct omap_nand_info* mtd_to_omap (struct mtd_info*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int omap_prefetch_enable (int ,int ,int,int,int,struct omap_nand_info*) ;
 int omap_prefetch_reset (int ,struct omap_nand_info*) ;
 int omap_write_buf16 (struct mtd_info*,int *,int) ;
 int omap_write_buf8 (struct mtd_info*,int *,int) ;
 void* readl (int ) ;
 int writeb (int const,int ) ;

__attribute__((used)) static void omap_write_buf_pref(struct nand_chip *chip, const u_char *buf,
    int len)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct omap_nand_info *info = mtd_to_omap(mtd);
 uint32_t w_count = 0;
 int i = 0, ret = 0;
 u16 *p = (u16 *)buf;
 unsigned long tim, limit;
 u32 val;


 if (len % 2 != 0) {
  writeb(*buf, info->nand.legacy.IO_ADDR_W);
  p = (u16 *)(buf + 1);
  len--;
 }


 ret = omap_prefetch_enable(info->gpmc_cs,
   PREFETCH_FIFOTHRESHOLD_MAX, 0x0, len, 0x1, info);
 if (ret) {

  if (info->nand.options & NAND_BUSWIDTH_16)
   omap_write_buf16(mtd, (u_char *)p, len);
  else
   omap_write_buf8(mtd, (u_char *)p, len);
 } else {
  while (len) {
   w_count = readl(info->reg.gpmc_prefetch_status);
   w_count = PREFETCH_STATUS_FIFO_CNT(w_count);
   w_count = w_count >> 1;
   for (i = 0; (i < w_count) && len; i++, len -= 2)
    iowrite16(*p++, info->nand.legacy.IO_ADDR_W);
  }

  tim = 0;
  limit = (loops_per_jiffy *
     msecs_to_jiffies(OMAP_NAND_TIMEOUT_MS));
  do {
   cpu_relax();
   val = readl(info->reg.gpmc_prefetch_status);
   val = PREFETCH_STATUS_COUNT(val);
  } while (val && (tim++ < limit));


  omap_prefetch_reset(info->gpmc_cs, info);
 }
}
