
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_data {int sg_len; int sg; } ;
struct atmel_mci {TYPE_1__* pdev; struct mmc_data* data; } ;
struct TYPE_2__ {int dev; } ;


 int dma_unmap_sg (int *,int ,int ,int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;

__attribute__((used)) static void atmci_pdc_cleanup(struct atmel_mci *host)
{
 struct mmc_data *data = host->data;

 if (data)
  dma_unmap_sg(&host->pdev->dev,
    data->sg, data->sg_len,
    mmc_get_dma_dir(data));
}
