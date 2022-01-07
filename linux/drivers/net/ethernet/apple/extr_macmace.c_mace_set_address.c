
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct mace_data {struct mace* mace; } ;
struct mace {int maccc; } ;


 int __mace_set_address (struct net_device*,void*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct mace_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mace_set_address(struct net_device *dev, void *addr)
{
 struct mace_data *mp = netdev_priv(dev);
 volatile struct mace *mb = mp->mace;
 unsigned long flags;
 u8 maccc;

 local_irq_save(flags);

 maccc = mb->maccc;

 __mace_set_address(dev, addr);

 mb->maccc = maccc;

 local_irq_restore(flags);

 return 0;
}
