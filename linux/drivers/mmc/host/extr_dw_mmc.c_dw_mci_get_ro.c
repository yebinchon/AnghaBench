
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int class_dev; } ;
struct dw_mci_slot {int id; int host; } ;


 int WRTPRT ;
 int dev_dbg (int *,char*,char*) ;
 int mci_readl (int ,int ) ;
 int mmc_gpio_get_ro (struct mmc_host*) ;
 struct dw_mci_slot* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static int dw_mci_get_ro(struct mmc_host *mmc)
{
 int read_only;
 struct dw_mci_slot *slot = mmc_priv(mmc);
 int gpio_ro = mmc_gpio_get_ro(mmc);


 if (gpio_ro >= 0)
  read_only = gpio_ro;
 else
  read_only =
   mci_readl(slot->host, WRTPRT) & (1 << slot->id) ? 1 : 0;

 dev_dbg(&mmc->class_dev, "card is %s\n",
  read_only ? "read-only" : "read-write");

 return read_only;
}
