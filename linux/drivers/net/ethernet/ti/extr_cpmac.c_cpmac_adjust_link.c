
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* phydev; } ;
struct cpmac_priv {scalar_t__ oldduplex; scalar_t__ oldspeed; int oldlink; int lock; } ;
struct TYPE_2__ {scalar_t__ duplex; scalar_t__ speed; scalar_t__ link; } ;


 scalar_t__ net_ratelimit () ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_link (struct cpmac_priv*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int phy_print_status (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cpmac_adjust_link(struct net_device *dev)
{
 struct cpmac_priv *priv = netdev_priv(dev);
 int new_state = 0;

 spin_lock(&priv->lock);
 if (dev->phydev->link) {
  netif_tx_start_all_queues(dev);
  if (dev->phydev->duplex != priv->oldduplex) {
   new_state = 1;
   priv->oldduplex = dev->phydev->duplex;
  }

  if (dev->phydev->speed != priv->oldspeed) {
   new_state = 1;
   priv->oldspeed = dev->phydev->speed;
  }

  if (!priv->oldlink) {
   new_state = 1;
   priv->oldlink = 1;
  }
 } else if (priv->oldlink) {
  new_state = 1;
  priv->oldlink = 0;
  priv->oldspeed = 0;
  priv->oldduplex = -1;
 }

 if (new_state && netif_msg_link(priv) && net_ratelimit())
  phy_print_status(dev->phydev);

 spin_unlock(&priv->lock);
}
