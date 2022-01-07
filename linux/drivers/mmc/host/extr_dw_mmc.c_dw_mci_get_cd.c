
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps; int class_dev; } ;
struct dw_mci_slot {int id; int flags; struct dw_mci* host; } ;
struct dw_mci {int lock; } ;


 int CDETECT ;
 int DW_MMC_CARD_PRESENT ;
 int MMC_CAP_NEEDS_POLL ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*) ;
 int mci_readl (struct dw_mci*,int ) ;
 int mmc_card_is_removable (struct mmc_host*) ;
 int mmc_gpio_get_cd (struct mmc_host*) ;
 struct dw_mci_slot* mmc_priv (struct mmc_host*) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int dw_mci_get_cd(struct mmc_host *mmc)
{
 int present;
 struct dw_mci_slot *slot = mmc_priv(mmc);
 struct dw_mci *host = slot->host;
 int gpio_cd = mmc_gpio_get_cd(mmc);


 if (((mmc->caps & MMC_CAP_NEEDS_POLL)
    || !mmc_card_is_removable(mmc))) {
  present = 1;

  if (!test_bit(DW_MMC_CARD_PRESENT, &slot->flags)) {
   if (mmc->caps & MMC_CAP_NEEDS_POLL) {
    dev_info(&mmc->class_dev,
     "card is polling.\n");
   } else {
    dev_info(&mmc->class_dev,
     "card is non-removable.\n");
   }
   set_bit(DW_MMC_CARD_PRESENT, &slot->flags);
  }

  return present;
 } else if (gpio_cd >= 0)
  present = gpio_cd;
 else
  present = (mci_readl(slot->host, CDETECT) & (1 << slot->id))
   == 0 ? 1 : 0;

 spin_lock_bh(&host->lock);
 if (present && !test_and_set_bit(DW_MMC_CARD_PRESENT, &slot->flags))
  dev_dbg(&mmc->class_dev, "card is present\n");
 else if (!present &&
   !test_and_clear_bit(DW_MMC_CARD_PRESENT, &slot->flags))
  dev_dbg(&mmc->class_dev, "card is not present\n");
 spin_unlock_bh(&host->lock);

 return present;
}
