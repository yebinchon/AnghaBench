
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cas {int link_cntl; int lock; } ;


 int BMCR_ANENABLE ;
 int EINVAL ;
 int cas_begin_auto_negotiation (struct cas*,int *) ;
 struct cas* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cas_nway_reset(struct net_device *dev)
{
 struct cas *cp = netdev_priv(dev);
 unsigned long flags;

 if ((cp->link_cntl & BMCR_ANENABLE) == 0)
  return -EINVAL;


 spin_lock_irqsave(&cp->lock, flags);
 cas_begin_auto_negotiation(cp, ((void*)0));
 spin_unlock_irqrestore(&cp->lock, flags);

 return 0;
}
