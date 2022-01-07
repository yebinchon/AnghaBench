
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int IO_ADDR_R; int IO_ADDR_W; } ;
struct TYPE_6__ {TYPE_2__ legacy; } ;
struct TYPE_4__ {int gpmc_prefetch_status; } ;
struct omap_nand_info {scalar_t__ iomode; int gpmc_irq_count; int buf_len; int gpmc_irq_fifo; int comp; scalar_t__ buf; TYPE_3__ nand; TYPE_1__ reg; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ OMAP_NAND_IO_WRITE ;
 int PREFETCH_STATUS_FIFO_CNT (int) ;
 int complete (int *) ;
 int disable_irq_nosync (int) ;
 int ioread32_rep (int ,int*,int) ;
 int iowrite32_rep (int ,int*,int) ;
 int readl (int ) ;

__attribute__((used)) static irqreturn_t omap_nand_irq(int this_irq, void *dev)
{
 struct omap_nand_info *info = (struct omap_nand_info *) dev;
 u32 bytes;

 bytes = readl(info->reg.gpmc_prefetch_status);
 bytes = PREFETCH_STATUS_FIFO_CNT(bytes);
 bytes = bytes & 0xFFFC;
 if (info->iomode == OMAP_NAND_IO_WRITE) {
  if (this_irq == info->gpmc_irq_count)
   goto done;

  if (info->buf_len && (info->buf_len < bytes))
   bytes = info->buf_len;
  else if (!info->buf_len)
   bytes = 0;
  iowrite32_rep(info->nand.legacy.IO_ADDR_W, (u32 *)info->buf,
         bytes >> 2);
  info->buf = info->buf + bytes;
  info->buf_len -= bytes;

 } else {
  ioread32_rep(info->nand.legacy.IO_ADDR_R, (u32 *)info->buf,
        bytes >> 2);
  info->buf = info->buf + bytes;

  if (this_irq == info->gpmc_irq_count)
   goto done;
 }

 return IRQ_HANDLED;

done:
 complete(&info->comp);

 disable_irq_nosync(info->gpmc_irq_fifo);
 disable_irq_nosync(info->gpmc_irq_count);

 return IRQ_HANDLED;
}
