
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int device; int vendor; int num; } ;
struct ath6kl_sdio {struct ath6kl_sdio* dma_buffer; int ar; int wr_async_work; } ;


 int ATH6KL_DBG_BOOT ;
 int ath6kl_core_cleanup (int ) ;
 int ath6kl_core_destroy (int ) ;
 int ath6kl_dbg (int ,char*,int ,int ,int ) ;
 int ath6kl_stop_txrx (int ) ;
 int cancel_work_sync (int *) ;
 int kfree (struct ath6kl_sdio*) ;
 struct ath6kl_sdio* sdio_get_drvdata (struct sdio_func*) ;

__attribute__((used)) static void ath6kl_sdio_remove(struct sdio_func *func)
{
 struct ath6kl_sdio *ar_sdio;

 ath6kl_dbg(ATH6KL_DBG_BOOT,
     "sdio removed func %d vendor 0x%x device 0x%x\n",
     func->num, func->vendor, func->device);

 ar_sdio = sdio_get_drvdata(func);

 ath6kl_stop_txrx(ar_sdio->ar);
 cancel_work_sync(&ar_sdio->wr_async_work);

 ath6kl_core_cleanup(ar_sdio->ar);
 ath6kl_core_destroy(ar_sdio->ar);

 kfree(ar_sdio->dma_buffer);
 kfree(ar_sdio);
}
