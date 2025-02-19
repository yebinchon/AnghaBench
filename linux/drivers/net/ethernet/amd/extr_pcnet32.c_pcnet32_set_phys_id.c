
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct pcnet32_private {int* save_regs; int lock; struct pcnet32_access* a; } ;
struct pcnet32_access {int (* read_bcr ) (int ,int) ;int (* write_bcr ) (int ,int,int) ;} ;
struct net_device {int base_addr; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;






 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int,int) ;
 int stub3 (int ,int) ;
 int stub4 (int ,int,int) ;

__attribute__((used)) static int pcnet32_set_phys_id(struct net_device *dev,
          enum ethtool_phys_id_state state)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 const struct pcnet32_access *a = lp->a;
 ulong ioaddr = dev->base_addr;
 unsigned long flags;
 int i;

 switch (state) {
 case 131:

  spin_lock_irqsave(&lp->lock, flags);
  for (i = 4; i < 8; i++)
   lp->save_regs[i - 4] = a->read_bcr(ioaddr, i);
  spin_unlock_irqrestore(&lp->lock, flags);
  return 2;

 case 128:
 case 129:

  spin_lock_irqsave(&lp->lock, flags);
  for (i = 4; i < 8; i++)
   a->write_bcr(ioaddr, i, a->read_bcr(ioaddr, i) ^ 0x4000);
  spin_unlock_irqrestore(&lp->lock, flags);
  break;

 case 130:

  spin_lock_irqsave(&lp->lock, flags);
  for (i = 4; i < 8; i++)
   a->write_bcr(ioaddr, i, lp->save_regs[i - 4]);
  spin_unlock_irqrestore(&lp->lock, flags);
 }
 return 0;
}
