
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipw2100_priv {int status; int low_lock; } ;


 int IPW_DEBUG_INFO (char*) ;
 int STATUS_ASSOCIATED ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ipw2100_open(struct net_device *dev)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 unsigned long flags;
 IPW_DEBUG_INFO("dev->open\n");

 spin_lock_irqsave(&priv->low_lock, flags);
 if (priv->status & STATUS_ASSOCIATED) {
  netif_carrier_on(dev);
  netif_start_queue(dev);
 }
 spin_unlock_irqrestore(&priv->low_lock, flags);

 return 0;
}
