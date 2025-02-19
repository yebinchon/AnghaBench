
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct bcm2835_host {TYPE_1__* data; scalar_t__ ioaddr; TYPE_2__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int flags; int error; } ;


 int EILSEQ ;
 int ETIMEDOUT ;
 int MMC_DATA_READ ;
 scalar_t__ SDHSTS ;
 int SDHSTS_CMD_TIME_OUT ;
 int SDHSTS_CRC16_ERROR ;
 int SDHSTS_CRC7_ERROR ;
 int SDHSTS_FIFO_ERROR ;
 int SDHSTS_REW_TIME_OUT ;
 int bcm2835_transfer_block_pio (struct bcm2835_host*,int) ;
 int dev_err (struct device*,char*,char*,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void bcm2835_transfer_pio(struct bcm2835_host *host)
{
 struct device *dev = &host->pdev->dev;
 u32 sdhsts;
 bool is_read;

 is_read = (host->data->flags & MMC_DATA_READ) != 0;
 bcm2835_transfer_block_pio(host, is_read);

 sdhsts = readl(host->ioaddr + SDHSTS);
 if (sdhsts & (SDHSTS_CRC16_ERROR |
        SDHSTS_CRC7_ERROR |
        SDHSTS_FIFO_ERROR)) {
  dev_err(dev, "%s transfer error - HSTS %08x\n",
   is_read ? "read" : "write", sdhsts);
  host->data->error = -EILSEQ;
 } else if ((sdhsts & (SDHSTS_CMD_TIME_OUT |
         SDHSTS_REW_TIME_OUT))) {
  dev_err(dev, "%s timeout error - HSTS %08x\n",
   is_read ? "read" : "write", sdhsts);
  host->data->error = -ETIMEDOUT;
 }
}
