
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int device; int vendor; int num; } ;
struct ath10k_sdio {int workqueue; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_BOOT ;
 int ath10k_core_destroy (struct ath10k*) ;
 int ath10k_core_unregister (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 struct ath10k_sdio* sdio_get_drvdata (struct sdio_func*) ;

__attribute__((used)) static void ath10k_sdio_remove(struct sdio_func *func)
{
 struct ath10k_sdio *ar_sdio = sdio_get_drvdata(func);
 struct ath10k *ar = ar_sdio->ar;

 ath10k_dbg(ar, ATH10K_DBG_BOOT,
     "sdio removed func %d vendor 0x%x device 0x%x\n",
     func->num, func->vendor, func->device);

 ath10k_core_unregister(ar);
 ath10k_core_destroy(ar);

 flush_workqueue(ar_sdio->workqueue);
 destroy_workqueue(ar_sdio->workqueue);
}
