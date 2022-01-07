
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_mmc_card {struct mwifiex_adapter* adapter; } ;
struct sdio_func {int dummy; } ;
struct mwifiex_adapter {int work_flags; } ;
struct device {int dummy; } ;


 int MWIFIEX_BSS_ROLE_STA ;
 int MWIFIEX_IS_SUSPENDED ;
 int MWIFIEX_SYNC_CMD ;
 int WARN ;
 int clear_bit (int ,int *) ;
 int dev_err (struct device*,char*) ;
 struct sdio_func* dev_to_sdio_func (struct device*) ;
 int mwifiex_cancel_hs (int ,int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_disable_wake (struct mwifiex_adapter*) ;
 int mwifiex_get_priv (struct mwifiex_adapter*,int ) ;
 struct sdio_mmc_card* sdio_get_drvdata (struct sdio_func*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int mwifiex_sdio_resume(struct device *dev)
{
 struct sdio_func *func = dev_to_sdio_func(dev);
 struct sdio_mmc_card *card;
 struct mwifiex_adapter *adapter;

 card = sdio_get_drvdata(func);
 if (!card || !card->adapter) {
  dev_err(dev, "resume: invalid card or adapter\n");
  return 0;
 }

 adapter = card->adapter;

 if (!test_bit(MWIFIEX_IS_SUSPENDED, &adapter->work_flags)) {
  mwifiex_dbg(adapter, WARN,
       "device already resumed\n");
  return 0;
 }

 clear_bit(MWIFIEX_IS_SUSPENDED, &adapter->work_flags);


 mwifiex_cancel_hs(mwifiex_get_priv(adapter, MWIFIEX_BSS_ROLE_STA),
     MWIFIEX_SYNC_CMD);

 mwifiex_disable_wake(adapter);

 return 0;
}
