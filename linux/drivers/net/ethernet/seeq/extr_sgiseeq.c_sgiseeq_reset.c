
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgiseeq_regs {int dummy; } ;
struct sgiseeq_private {struct sgiseeq_regs* sregs; } ;
struct net_device {int dummy; } ;


 int init_seeq (struct net_device*,struct sgiseeq_private*,struct sgiseeq_regs*) ;
 struct sgiseeq_private* netdev_priv (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static inline int sgiseeq_reset(struct net_device *dev)
{
 struct sgiseeq_private *sp = netdev_priv(dev);
 struct sgiseeq_regs *sregs = sp->sregs;
 int err;

 err = init_seeq(dev, sp, sregs);
 if (err)
  return err;

 netif_trans_update(dev);
 netif_wake_queue(dev);

 return 0;
}
