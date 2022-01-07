
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct toshsd_host {scalar_t__ ioaddr; int sg_miter; struct mmc_data* data; TYPE_1__* pdev; } ;
struct mmc_data {int flags; int blksz; int blocks; int sg_len; TYPE_2__* sg; } ;
struct TYPE_4__ {int offset; } ;
struct TYPE_3__ {int dev; } ;


 int MMC_DATA_READ ;
 scalar_t__ SD_BLOCKCOUNT ;
 scalar_t__ SD_CARDXFERDATALEN ;
 unsigned int SG_MITER_ATOMIC ;
 unsigned int SG_MITER_FROM_SG ;
 unsigned int SG_MITER_TO_SG ;
 int dev_dbg (int *,char*,int ,int ,int ) ;
 int iowrite16 (int ,scalar_t__) ;
 int sg_miter_start (int *,TYPE_2__*,int ,unsigned int) ;

__attribute__((used)) static void toshsd_start_data(struct toshsd_host *host, struct mmc_data *data)
{
 unsigned int flags = SG_MITER_ATOMIC;

 dev_dbg(&host->pdev->dev, "setup data transfer: blocksize %08x  nr_blocks %d, offset: %08x\n",
  data->blksz, data->blocks, data->sg->offset);

 host->data = data;

 if (data->flags & MMC_DATA_READ)
  flags |= SG_MITER_TO_SG;
 else
  flags |= SG_MITER_FROM_SG;

 sg_miter_start(&host->sg_miter, data->sg, data->sg_len, flags);


 iowrite16(data->blocks, host->ioaddr + SD_BLOCKCOUNT);
 iowrite16(data->blksz, host->ioaddr + SD_CARDXFERDATALEN);
}
