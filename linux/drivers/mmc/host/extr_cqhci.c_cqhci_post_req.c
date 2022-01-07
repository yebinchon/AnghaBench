
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int flags; int sg_len; int sg; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int MMC_DATA_READ ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_dev (struct mmc_host*) ;

__attribute__((used)) static void cqhci_post_req(struct mmc_host *host, struct mmc_request *mrq)
{
 struct mmc_data *data = mrq->data;

 if (data) {
  dma_unmap_sg(mmc_dev(host), data->sg, data->sg_len,
        (data->flags & MMC_DATA_READ) ?
        DMA_FROM_DEVICE : DMA_TO_DEVICE);
 }
}
