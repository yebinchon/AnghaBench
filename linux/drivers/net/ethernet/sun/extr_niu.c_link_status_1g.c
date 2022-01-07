
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu_link_config {int active_advertising; int supported; } ;
struct niu {int lock; struct niu_link_config link_config; } ;


 int ADVERTISED_TP ;
 int SUPPORTED_TP ;
 int link_status_mii (struct niu*,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int link_status_1g(struct niu *np, int *link_up_p)
{
 struct niu_link_config *lp = &np->link_config;
 unsigned long flags;
 int err;

 spin_lock_irqsave(&np->lock, flags);

 err = link_status_mii(np, link_up_p);
 lp->supported |= SUPPORTED_TP;
 lp->active_advertising |= ADVERTISED_TP;

 spin_unlock_irqrestore(&np->lock, flags);
 return err;
}
