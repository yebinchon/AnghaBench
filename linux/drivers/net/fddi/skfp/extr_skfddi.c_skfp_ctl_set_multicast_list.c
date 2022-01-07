
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int DriverLock; } ;
struct s_smc {TYPE_1__ os; } ;
struct net_device {int dummy; } ;
typedef TYPE_1__ skfddi_priv ;


 struct s_smc* netdev_priv (struct net_device*) ;
 int skfp_ctl_set_multicast_list_wo_lock (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void skfp_ctl_set_multicast_list(struct net_device *dev)
{
 struct s_smc *smc = netdev_priv(dev);
 skfddi_priv *bp = &smc->os;
 unsigned long Flags;

 spin_lock_irqsave(&bp->DriverLock, Flags);
 skfp_ctl_set_multicast_list_wo_lock(dev);
 spin_unlock_irqrestore(&bp->DriverLock, Flags);
}
