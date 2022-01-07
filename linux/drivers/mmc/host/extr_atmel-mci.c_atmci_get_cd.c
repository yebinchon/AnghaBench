
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int class_dev; } ;
struct atmel_mci_slot {int detect_is_active_high; int detect_pin; } ;


 int ENOSYS ;
 int dev_dbg (int *,char*,char*) ;
 int gpio_get_value (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 struct atmel_mci_slot* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static int atmci_get_cd(struct mmc_host *mmc)
{
 int present = -ENOSYS;
 struct atmel_mci_slot *slot = mmc_priv(mmc);

 if (gpio_is_valid(slot->detect_pin)) {
  present = !(gpio_get_value(slot->detect_pin) ^
       slot->detect_is_active_high);
  dev_dbg(&mmc->class_dev, "card is %spresent\n",
    present ? "" : "not ");
 }

 return present;
}
