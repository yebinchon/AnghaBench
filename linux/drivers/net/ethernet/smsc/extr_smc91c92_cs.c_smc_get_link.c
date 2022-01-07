
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct smc_private {int lock; } ;
struct net_device {unsigned int base_addr; } ;


 scalar_t__ BANK_SELECT ;
 int SMC_SELECT_BANK (int) ;
 int inw (scalar_t__) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int smc_link_ok (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 smc_get_link(struct net_device *dev)
{
 struct smc_private *smc = netdev_priv(dev);
 unsigned int ioaddr = dev->base_addr;
 u16 saved_bank = inw(ioaddr + BANK_SELECT);
 u32 ret;
 unsigned long flags;

 spin_lock_irqsave(&smc->lock, flags);
 SMC_SELECT_BANK(3);
 ret = smc_link_ok(dev);
 SMC_SELECT_BANK(saved_bank);
 spin_unlock_irqrestore(&smc->lock, flags);
 return ret;
}
