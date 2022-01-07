
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_mapping_iter {unsigned short* addr; int length; int consumed; } ;
struct toshsd_host {int lock; scalar_t__ ioaddr; TYPE_2__* pdev; TYPE_1__* cmd; struct sg_mapping_iter sg_miter; struct mmc_data* data; } ;
struct mmc_data {int blksz; int flags; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int error; } ;


 int EIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MMC_DATA_READ ;
 scalar_t__ SD_DATAPORT ;
 int dev_dbg (int *,char*,int,int) ;
 int dev_warn (int *,char*) ;
 int ioread32_rep (scalar_t__,unsigned short*,int) ;
 int iowrite32_rep (scalar_t__,unsigned short*,int) ;
 int sg_miter_next (struct sg_mapping_iter*) ;
 int sg_miter_stop (struct sg_mapping_iter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int toshsd_finish_request (struct toshsd_host*) ;

__attribute__((used)) static irqreturn_t toshsd_thread_irq(int irq, void *dev_id)
{
 struct toshsd_host *host = dev_id;
 struct mmc_data *data = host->data;
 struct sg_mapping_iter *sg_miter = &host->sg_miter;
 unsigned short *buf;
 int count;
 unsigned long flags;

 if (!data) {
  dev_warn(&host->pdev->dev, "Spurious Data IRQ\n");
  if (host->cmd) {
   host->cmd->error = -EIO;
   toshsd_finish_request(host);
  }
  return IRQ_NONE;
 }
 spin_lock_irqsave(&host->lock, flags);

 if (!sg_miter_next(sg_miter))
  goto done;

 buf = sg_miter->addr;




 count = sg_miter->length;
 if (count > data->blksz)
  count = data->blksz;

 dev_dbg(&host->pdev->dev, "count: %08x, flags %08x\n", count,
  data->flags);


 if (data->flags & MMC_DATA_READ)
  ioread32_rep(host->ioaddr + SD_DATAPORT, buf, count >> 2);
 else
  iowrite32_rep(host->ioaddr + SD_DATAPORT, buf, count >> 2);

 sg_miter->consumed = count;
 sg_miter_stop(sg_miter);

done:
 spin_unlock_irqrestore(&host->lock, flags);

 return IRQ_HANDLED;
}
