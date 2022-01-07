
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func {int dev; int cur_blksize; int max_blksize; int device; int vendor; int num; } ;
struct sdio_device_id {int dummy; } ;
struct ath6kl_sdio {int is_disabled; struct ath6kl_sdio* dma_buffer; struct ath6kl* ar; struct sdio_func* func; int * bus_req; int irq_wq; int wr_async_work; int wr_asyncq; int bus_req_freeq; int scat_req; int dma_buffer_mutex; int wr_async_lock; int scat_lock; int lock; struct sdio_device_id const* id; } ;
struct TYPE_2__ {int max_data_size; } ;
struct ath6kl {TYPE_1__ bmi; int * hif_ops; struct ath6kl_sdio* hif_priv; int hif_type; } ;


 int ATH6KL_DBG_BOOT ;
 int ATH6KL_HIF_TYPE_SDIO ;
 int ATH6KL_HTC_TYPE_MBOX ;
 int BUS_REQUEST_MAX_NUM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HIF_DMA_BUFFER_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 struct ath6kl* ath6kl_core_create (int *) ;
 int ath6kl_core_destroy (struct ath6kl*) ;
 int ath6kl_core_init (struct ath6kl*,int ) ;
 int ath6kl_dbg (int ,char*,int ,int ,int ,int ,int ) ;
 int ath6kl_err (char*,...) ;
 int ath6kl_sdio_config (struct ath6kl*) ;
 int ath6kl_sdio_free_bus_req (struct ath6kl_sdio*,int *) ;
 int ath6kl_sdio_ops ;
 int ath6kl_sdio_set_mbox_info (struct ath6kl*) ;
 int ath6kl_sdio_write_async_work ;
 int init_waitqueue_head (int *) ;
 int kfree (struct ath6kl_sdio*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sdio_set_drvdata (struct sdio_func*,struct ath6kl_sdio*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ath6kl_sdio_probe(struct sdio_func *func,
        const struct sdio_device_id *id)
{
 int ret;
 struct ath6kl_sdio *ar_sdio;
 struct ath6kl *ar;
 int count;

 ath6kl_dbg(ATH6KL_DBG_BOOT,
     "sdio new func %d vendor 0x%x device 0x%x block 0x%x/0x%x\n",
     func->num, func->vendor, func->device,
     func->max_blksize, func->cur_blksize);

 ar_sdio = kzalloc(sizeof(struct ath6kl_sdio), GFP_KERNEL);
 if (!ar_sdio)
  return -ENOMEM;

 ar_sdio->dma_buffer = kzalloc(HIF_DMA_BUFFER_SIZE, GFP_KERNEL);
 if (!ar_sdio->dma_buffer) {
  ret = -ENOMEM;
  goto err_hif;
 }

 ar_sdio->func = func;
 sdio_set_drvdata(func, ar_sdio);

 ar_sdio->id = id;
 ar_sdio->is_disabled = 1;

 spin_lock_init(&ar_sdio->lock);
 spin_lock_init(&ar_sdio->scat_lock);
 spin_lock_init(&ar_sdio->wr_async_lock);
 mutex_init(&ar_sdio->dma_buffer_mutex);

 INIT_LIST_HEAD(&ar_sdio->scat_req);
 INIT_LIST_HEAD(&ar_sdio->bus_req_freeq);
 INIT_LIST_HEAD(&ar_sdio->wr_asyncq);

 INIT_WORK(&ar_sdio->wr_async_work, ath6kl_sdio_write_async_work);

 init_waitqueue_head(&ar_sdio->irq_wq);

 for (count = 0; count < BUS_REQUEST_MAX_NUM; count++)
  ath6kl_sdio_free_bus_req(ar_sdio, &ar_sdio->bus_req[count]);

 ar = ath6kl_core_create(&ar_sdio->func->dev);
 if (!ar) {
  ath6kl_err("Failed to alloc ath6kl core\n");
  ret = -ENOMEM;
  goto err_dma;
 }

 ar_sdio->ar = ar;
 ar->hif_type = ATH6KL_HIF_TYPE_SDIO;
 ar->hif_priv = ar_sdio;
 ar->hif_ops = &ath6kl_sdio_ops;
 ar->bmi.max_data_size = 256;

 ath6kl_sdio_set_mbox_info(ar);

 ret = ath6kl_sdio_config(ar);
 if (ret) {
  ath6kl_err("Failed to config sdio: %d\n", ret);
  goto err_core_alloc;
 }

 ret = ath6kl_core_init(ar, ATH6KL_HTC_TYPE_MBOX);
 if (ret) {
  ath6kl_err("Failed to init ath6kl core\n");
  goto err_core_alloc;
 }

 return ret;

err_core_alloc:
 ath6kl_core_destroy(ar_sdio->ar);
err_dma:
 kfree(ar_sdio->dma_buffer);
err_hif:
 kfree(ar_sdio);

 return ret;
}
