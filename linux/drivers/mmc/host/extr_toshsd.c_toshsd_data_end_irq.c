
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toshsd_host {scalar_t__ ioaddr; TYPE_1__* pdev; struct mmc_data* data; } ;
struct mmc_data {scalar_t__ error; int bytes_xfered; int blocks; int blksz; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ SD_STOPINTERNAL ;
 int dev_dbg (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 int iowrite16 (int ,scalar_t__) ;
 int toshsd_finish_request (struct toshsd_host*) ;

__attribute__((used)) static void toshsd_data_end_irq(struct toshsd_host *host)
{
 struct mmc_data *data = host->data;

 host->data = ((void*)0);

 if (!data) {
  dev_warn(&host->pdev->dev, "Spurious data end IRQ\n");
  return;
 }

 if (data->error == 0)
  data->bytes_xfered = data->blocks * data->blksz;
 else
  data->bytes_xfered = 0;

 dev_dbg(&host->pdev->dev, "Completed data request xfr=%d\n",
  data->bytes_xfered);

 iowrite16(0, host->ioaddr + SD_STOPINTERNAL);

 toshsd_finish_request(host);
}
