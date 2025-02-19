
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct smc_private {int cfg; int mii_if; } ;
struct net_device {unsigned int base_addr; } ;


 scalar_t__ BANK_SELECT ;
 int CFG_MII_SELECT ;
 int EOPNOTSUPP ;
 int SMC_SELECT_BANK (int) ;
 int inw (scalar_t__) ;
 int mii_nway_restart (int *) ;
 struct smc_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int smc_nway_reset(struct net_device *dev)
{
 struct smc_private *smc = netdev_priv(dev);
 if (smc->cfg & CFG_MII_SELECT) {
  unsigned int ioaddr = dev->base_addr;
  u16 saved_bank = inw(ioaddr + BANK_SELECT);
  int res;

  SMC_SELECT_BANK(3);
  res = mii_nway_restart(&smc->mii_if);
  SMC_SELECT_BANK(saved_bank);

  return res;
 } else
  return -EOPNOTSUPP;
}
