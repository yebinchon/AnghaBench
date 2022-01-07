
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func {int enable_timeout; int card; } ;
struct ath6kl_sdio {TYPE_1__* id; struct sdio_func* func; } ;
struct ath6kl {int dummy; } ;
struct TYPE_2__ {int device; } ;


 int ATH6KL_DBG_BOOT ;
 int CCCR_SDIO_IRQ_MODE_REG ;
 int HIF_MBOX_BLOCK_SIZE ;
 int MANUFACTURER_ID_AR6003_BASE ;
 int MANUFACTURER_ID_ATH6KL_BASE_MASK ;
 int SDIO_IRQ_MODE_ASYNC_4BIT_IRQ ;
 int ath6kl_dbg (int ,char*) ;
 int ath6kl_err (char*,int,...) ;
 int ath6kl_sdio_func0_cmd52_wr_byte (int ,int ,int ) ;
 struct ath6kl_sdio* ath6kl_sdio_priv (struct ath6kl*) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_set_block_size (struct sdio_func*,int ) ;

__attribute__((used)) static int ath6kl_sdio_config(struct ath6kl *ar)
{
 struct ath6kl_sdio *ar_sdio = ath6kl_sdio_priv(ar);
 struct sdio_func *func = ar_sdio->func;
 int ret;

 sdio_claim_host(func);

 if ((ar_sdio->id->device & MANUFACTURER_ID_ATH6KL_BASE_MASK) >=
     MANUFACTURER_ID_AR6003_BASE) {

  ret = ath6kl_sdio_func0_cmd52_wr_byte(func->card,
      CCCR_SDIO_IRQ_MODE_REG,
      SDIO_IRQ_MODE_ASYNC_4BIT_IRQ);
  if (ret) {
   ath6kl_err("Failed to enable 4-bit async irq mode %d\n",
       ret);
   goto out;
  }

  ath6kl_dbg(ATH6KL_DBG_BOOT, "4-bit async irq mode enabled\n");
 }


 func->enable_timeout = 100;

 ret = sdio_set_block_size(func, HIF_MBOX_BLOCK_SIZE);
 if (ret) {
  ath6kl_err("Set sdio block size %d failed: %d)\n",
      HIF_MBOX_BLOCK_SIZE, ret);
  goto out;
 }

out:
 sdio_release_host(func);

 return ret;
}
