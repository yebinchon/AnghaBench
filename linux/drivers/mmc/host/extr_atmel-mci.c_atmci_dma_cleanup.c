
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mmc_data {int sg_len; int sg; } ;
struct TYPE_6__ {TYPE_2__* chan; } ;
struct atmel_mci {TYPE_3__ dma; struct mmc_data* data; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int dev; } ;


 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;

__attribute__((used)) static void atmci_dma_cleanup(struct atmel_mci *host)
{
 struct mmc_data *data = host->data;

 if (data)
  dma_unmap_sg(host->dma.chan->device->dev,
    data->sg, data->sg_len,
    mmc_get_dma_dir(data));
}
