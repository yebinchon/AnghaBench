
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_mmc_card {TYPE_1__* reg; struct sdio_func* func; } ;
struct sdio_func {int dummy; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;
struct TYPE_2__ {int host_int_enable; int host_int_mask_reg; } ;


 int ERROR ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_sdio_interrupt ;
 int mwifiex_write_reg_locked (struct sdio_func*,int ,int ) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_claim_irq (struct sdio_func*,int ) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;

__attribute__((used)) static int mwifiex_sdio_enable_host_int(struct mwifiex_adapter *adapter)
{
 struct sdio_mmc_card *card = adapter->card;
 struct sdio_func *func = card->func;
 int ret;

 sdio_claim_host(func);


 ret = sdio_claim_irq(func, mwifiex_sdio_interrupt);
 if (ret) {
  mwifiex_dbg(adapter, ERROR,
       "claim irq failed: ret=%d\n", ret);
  goto out;
 }


 ret = mwifiex_write_reg_locked(func, card->reg->host_int_mask_reg,
           card->reg->host_int_enable);
 if (ret) {
  mwifiex_dbg(adapter, ERROR,
       "enable host interrupt failed\n");
  sdio_release_irq(func);
 }

out:
 sdio_release_host(func);
 return ret;
}
