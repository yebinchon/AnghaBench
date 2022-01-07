
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int class_dev; } ;
struct atmel_mci_slot {int wp_pin; } ;


 int ENOSYS ;
 int dev_dbg (int *,char*,char*) ;
 int gpio_get_value (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 struct atmel_mci_slot* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static int atmci_get_ro(struct mmc_host *mmc)
{
 int read_only = -ENOSYS;
 struct atmel_mci_slot *slot = mmc_priv(mmc);

 if (gpio_is_valid(slot->wp_pin)) {
  read_only = gpio_get_value(slot->wp_pin);
  dev_dbg(&mmc->class_dev, "card is %s\n",
    read_only ? "read-only" : "read-write");
 }

 return read_only;
}
