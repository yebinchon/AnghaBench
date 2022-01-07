
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_mmc_card {struct mwifiex_adapter* adapter; int fw_done; } ;
struct sdio_func {int dummy; } ;
struct mwifiex_adapter {int work_flags; } ;
struct device {int dummy; } ;
typedef int mmc_pm_flag_t ;


 int EFAULT ;
 int ENOSYS ;
 int ERROR ;
 int INFO ;
 int MMC_PM_KEEP_POWER ;
 int MWIFIEX_IS_HS_ENABLING ;
 int MWIFIEX_IS_SUSPENDED ;
 int clear_bit (int ,int *) ;
 int dev_err (struct device*,char*,...) ;
 struct sdio_func* dev_to_sdio_func (struct device*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_disable_wake (struct mwifiex_adapter*) ;
 int mwifiex_enable_hs (struct mwifiex_adapter*) ;
 int mwifiex_enable_wake (struct mwifiex_adapter*) ;
 int pr_debug (char*,int ,int) ;
 int sdio_func_id (struct sdio_func*) ;
 struct sdio_mmc_card* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_get_host_pm_caps (struct sdio_func*) ;
 int sdio_set_host_pm_flags (struct sdio_func*,int) ;
 int set_bit (int ,int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int mwifiex_sdio_suspend(struct device *dev)
{
 struct sdio_func *func = dev_to_sdio_func(dev);
 struct sdio_mmc_card *card;
 struct mwifiex_adapter *adapter;
 mmc_pm_flag_t pm_flag = 0;
 int ret = 0;

 pm_flag = sdio_get_host_pm_caps(func);
 pr_debug("cmd: %s: suspend: PM flag = 0x%x\n",
   sdio_func_id(func), pm_flag);
 if (!(pm_flag & MMC_PM_KEEP_POWER)) {
  dev_err(dev, "%s: cannot remain alive while host is"
   " suspended\n", sdio_func_id(func));
  return -ENOSYS;
 }

 card = sdio_get_drvdata(func);
 if (!card) {
  dev_err(dev, "suspend: invalid card\n");
  return 0;
 }


 wait_for_completion(&card->fw_done);

 adapter = card->adapter;
 if (!adapter) {
  dev_err(dev, "adapter is not valid\n");
  return 0;
 }

 mwifiex_enable_wake(adapter);


 if (!mwifiex_enable_hs(adapter)) {
  mwifiex_dbg(adapter, ERROR,
       "cmd: failed to suspend\n");
  clear_bit(MWIFIEX_IS_HS_ENABLING, &adapter->work_flags);
  mwifiex_disable_wake(adapter);
  return -EFAULT;
 }

 mwifiex_dbg(adapter, INFO,
      "cmd: suspend with MMC_PM_KEEP_POWER\n");
 ret = sdio_set_host_pm_flags(func, MMC_PM_KEEP_POWER);


 set_bit(MWIFIEX_IS_SUSPENDED, &adapter->work_flags);
 clear_bit(MWIFIEX_IS_HS_ENABLING, &adapter->work_flags);

 return ret;
}
