
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int irq; } ;
struct TYPE_2__ {int ipg_timer; } ;
struct amd8111e_priv {int options; scalar_t__ opened; int lock; TYPE_1__ ipg_data; int amd8111e_net_dev; int napi; } ;


 int OPTION_DYN_IPG_ENABLE ;
 int amd8111e_disable_interrupt (struct amd8111e_priv*) ;
 int amd8111e_free_ring (struct amd8111e_priv*) ;
 int amd8111e_free_skbs (int ) ;
 int amd8111e_get_stats (struct net_device*) ;
 int amd8111e_stop_chip (struct amd8111e_priv*) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (int ) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int amd8111e_close(struct net_device *dev)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 netif_stop_queue(dev);

 napi_disable(&lp->napi);

 spin_lock_irq(&lp->lock);

 amd8111e_disable_interrupt(lp);
 amd8111e_stop_chip(lp);


 amd8111e_free_skbs(lp->amd8111e_net_dev);

 netif_carrier_off(lp->amd8111e_net_dev);


 if(lp->options & OPTION_DYN_IPG_ENABLE)
  del_timer_sync(&lp->ipg_data.ipg_timer);

 spin_unlock_irq(&lp->lock);
 free_irq(dev->irq, dev);
 amd8111e_free_ring(lp);


 amd8111e_get_stats(dev);
 lp->opened = 0;
 return 0;
}
