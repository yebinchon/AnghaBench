
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
typedef int u32 ;
struct TYPE_5__ {int IO_ADDR_R; } ;
struct TYPE_6__ {int options; TYPE_2__ legacy; } ;
struct TYPE_4__ {int gpmc_prefetch_status; } ;
struct omap_nand_info {int gpmc_cs; TYPE_3__ nand; TYPE_1__ reg; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;


 int NAND_BUSWIDTH_16 ;
 int PREFETCH_FIFOTHRESHOLD_MAX ;
 int PREFETCH_STATUS_FIFO_CNT (int) ;
 int ioread32_rep (int ,int *,int) ;
 struct omap_nand_info* mtd_to_omap (struct mtd_info*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int omap_prefetch_enable (int ,int ,int,int,int,struct omap_nand_info*) ;
 int omap_prefetch_reset (int ,struct omap_nand_info*) ;
 int omap_read_buf16 (struct mtd_info*,int *,int) ;
 int omap_read_buf8 (struct mtd_info*,int *,int) ;
 int readl (int ) ;

__attribute__((used)) static void omap_read_buf_pref(struct nand_chip *chip, u_char *buf, int len)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct omap_nand_info *info = mtd_to_omap(mtd);
 uint32_t r_count = 0;
 int ret = 0;
 u32 *p = (u32 *)buf;


 if (len % 4) {
  if (info->nand.options & NAND_BUSWIDTH_16)
   omap_read_buf16(mtd, buf, len % 4);
  else
   omap_read_buf8(mtd, buf, len % 4);
  p = (u32 *) (buf + len % 4);
  len -= len % 4;
 }


 ret = omap_prefetch_enable(info->gpmc_cs,
   PREFETCH_FIFOTHRESHOLD_MAX, 0x0, len, 0x0, info);
 if (ret) {

  if (info->nand.options & NAND_BUSWIDTH_16)
   omap_read_buf16(mtd, (u_char *)p, len);
  else
   omap_read_buf8(mtd, (u_char *)p, len);
 } else {
  do {
   r_count = readl(info->reg.gpmc_prefetch_status);
   r_count = PREFETCH_STATUS_FIFO_CNT(r_count);
   r_count = r_count >> 2;
   ioread32_rep(info->nand.legacy.IO_ADDR_R, p, r_count);
   p += r_count;
   len -= r_count << 2;
  } while (len);

  omap_prefetch_reset(info->gpmc_cs, info);
 }
}
