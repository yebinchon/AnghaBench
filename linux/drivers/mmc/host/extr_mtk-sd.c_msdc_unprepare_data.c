
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdc_host {int dev; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {int host_cookie; int sg_len; int sg; } ;


 int MSDC_ASYNC_FLAG ;
 int MSDC_PREPARE_FLAG ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_get_dma_dir (struct mmc_data*) ;

__attribute__((used)) static void msdc_unprepare_data(struct msdc_host *host, struct mmc_request *mrq)
{
 struct mmc_data *data = mrq->data;

 if (data->host_cookie & MSDC_ASYNC_FLAG)
  return;

 if (data->host_cookie & MSDC_PREPARE_FLAG) {
  dma_unmap_sg(host->dev, data->sg, data->sg_len,
        mmc_get_dma_dir(data));
  data->host_cookie &= ~MSDC_PREPARE_FLAG;
 }
}
