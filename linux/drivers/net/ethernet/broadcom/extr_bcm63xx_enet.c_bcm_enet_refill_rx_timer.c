
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct bcm_enet_priv {int rx_lock; struct net_device* net_dev; } ;


 int bcm_enet_refill_rx (struct net_device*) ;
 struct bcm_enet_priv* from_timer (int ,struct timer_list*,int ) ;
 struct bcm_enet_priv* priv ;
 int rx_timeout ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void bcm_enet_refill_rx_timer(struct timer_list *t)
{
 struct bcm_enet_priv *priv = from_timer(priv, t, rx_timeout);
 struct net_device *dev = priv->net_dev;

 spin_lock(&priv->rx_lock);
 bcm_enet_refill_rx(dev);
 spin_unlock(&priv->rx_lock);
}
