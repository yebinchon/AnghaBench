
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sdio_mmc_card {struct mwifiex_adapter* adapter; int fw_done; } ;
struct sdio_func {int num; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_adapter {int mfg_mode; int priv_num; } ;


 scalar_t__ FIRMWARE_READY_SDIO ;
 int INFO ;
 int MWIFIEX_BSS_ROLE_ANY ;
 int MWIFIEX_FUNC_SHUTDOWN ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,int ) ;
 int mwifiex_deauthenticate_all (struct mwifiex_adapter*) ;
 int mwifiex_disable_auto_ds (struct mwifiex_private*) ;
 struct mwifiex_private* mwifiex_get_priv (struct mwifiex_adapter*,int ) ;
 int mwifiex_init_shutdown_fw (struct mwifiex_private*,int ) ;
 int mwifiex_remove_card (struct mwifiex_adapter*) ;
 int mwifiex_sdio_read_fw_status (struct mwifiex_adapter*,scalar_t__*) ;
 struct sdio_mmc_card* sdio_get_drvdata (struct sdio_func*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void
mwifiex_sdio_remove(struct sdio_func *func)
{
 struct sdio_mmc_card *card;
 struct mwifiex_adapter *adapter;
 struct mwifiex_private *priv;
 int ret = 0;
 u16 firmware_stat;

 card = sdio_get_drvdata(func);
 if (!card)
  return;

 wait_for_completion(&card->fw_done);

 adapter = card->adapter;
 if (!adapter || !adapter->priv_num)
  return;

 mwifiex_dbg(adapter, INFO, "info: SDIO func num=%d\n", func->num);

 ret = mwifiex_sdio_read_fw_status(adapter, &firmware_stat);
 if (!ret && firmware_stat == FIRMWARE_READY_SDIO &&
     !adapter->mfg_mode) {
  mwifiex_deauthenticate_all(adapter);

  priv = mwifiex_get_priv(adapter, MWIFIEX_BSS_ROLE_ANY);
  mwifiex_disable_auto_ds(priv);
  mwifiex_init_shutdown_fw(priv, MWIFIEX_FUNC_SHUTDOWN);
 }

 mwifiex_remove_card(adapter);
}
