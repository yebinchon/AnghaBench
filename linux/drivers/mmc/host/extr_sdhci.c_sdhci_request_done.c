
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sdhci_host {int flags; unsigned int bounce_buffer_size; int quirks; int pending_reset; TYPE_2__* mmc; int lock; struct mmc_request** mrqs_done; int clock; TYPE_1__* ops; scalar_t__ data_cmd; scalar_t__ cmd; int bounce_addr; int bounce_buffer; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_data {scalar_t__ host_cookie; unsigned int bytes_xfered; int sg_len; int sg; } ;
struct TYPE_6__ {int parent; } ;
struct TYPE_5__ {int (* set_clock ) (struct sdhci_host*,int ) ;} ;


 scalar_t__ COOKIE_MAPPED ;
 scalar_t__ COOKIE_UNMAPPED ;
 scalar_t__ DMA_FROM_DEVICE ;
 int SDHCI_MAX_MRQS ;
 int SDHCI_QUIRK_CLOCK_BEFORE_RESET ;
 int SDHCI_REQ_USE_DMA ;
 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int dma_sync_single_for_cpu (int ,int ,unsigned int,scalar_t__) ;
 int dma_unmap_sg (int ,int ,int ,scalar_t__) ;
 int mmc_dev (TYPE_2__*) ;
 scalar_t__ mmc_get_dma_dir (struct mmc_data*) ;
 int mmc_hostname (TYPE_2__*) ;
 int mmc_request_done (TYPE_2__*,struct mmc_request*) ;
 int pr_err (char*,int ,unsigned int,unsigned int) ;
 int sdhci_do_reset (struct sdhci_host*,int ) ;
 scalar_t__ sdhci_needs_reset (struct sdhci_host*,struct mmc_request*) ;
 int sg_copy_from_buffer (int ,int ,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sdhci_host*,int ) ;

__attribute__((used)) static bool sdhci_request_done(struct sdhci_host *host)
{
 unsigned long flags;
 struct mmc_request *mrq;
 int i;

 spin_lock_irqsave(&host->lock, flags);

 for (i = 0; i < SDHCI_MAX_MRQS; i++) {
  mrq = host->mrqs_done[i];
  if (mrq)
   break;
 }

 if (!mrq) {
  spin_unlock_irqrestore(&host->lock, flags);
  return 1;
 }






 if (host->flags & SDHCI_REQ_USE_DMA) {
  struct mmc_data *data = mrq->data;

  if (data && data->host_cookie == COOKIE_MAPPED) {
   if (host->bounce_buffer) {




    if (mmc_get_dma_dir(data) == DMA_FROM_DEVICE) {
     unsigned int length = data->bytes_xfered;

     if (length > host->bounce_buffer_size) {
      pr_err("%s: bounce buffer is %u bytes but DMA claims to have transferred %u bytes\n",
             mmc_hostname(host->mmc),
             host->bounce_buffer_size,
             data->bytes_xfered);

      length = host->bounce_buffer_size;
     }
     dma_sync_single_for_cpu(
      host->mmc->parent,
      host->bounce_addr,
      host->bounce_buffer_size,
      DMA_FROM_DEVICE);
     sg_copy_from_buffer(data->sg,
      data->sg_len,
      host->bounce_buffer,
      length);
    } else {

     dma_sync_single_for_cpu(
      host->mmc->parent,
      host->bounce_addr,
      host->bounce_buffer_size,
      mmc_get_dma_dir(data));
    }
   } else {

    dma_unmap_sg(mmc_dev(host->mmc), data->sg,
          data->sg_len,
          mmc_get_dma_dir(data));
   }
   data->host_cookie = COOKIE_UNMAPPED;
  }
 }





 if (sdhci_needs_reset(host, mrq)) {






  if (host->cmd || host->data_cmd) {
   spin_unlock_irqrestore(&host->lock, flags);
   return 1;
  }


  if (host->quirks & SDHCI_QUIRK_CLOCK_BEFORE_RESET)

   host->ops->set_clock(host, host->clock);



  sdhci_do_reset(host, SDHCI_RESET_CMD);
  sdhci_do_reset(host, SDHCI_RESET_DATA);

  host->pending_reset = 0;
 }

 host->mrqs_done[i] = ((void*)0);

 spin_unlock_irqrestore(&host->lock, flags);

 mmc_request_done(host->mmc, mrq);

 return 0;
}
