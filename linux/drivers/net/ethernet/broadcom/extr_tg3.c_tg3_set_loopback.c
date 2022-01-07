
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int mac_mode; int lock; int dev; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int MAC_MODE_PORT_INT_LPBACK ;
 int NETIF_F_LOOPBACK ;
 int netdev_info (struct net_device*,char*) ;
 struct tg3* netdev_priv (struct net_device*) ;
 int netif_carrier_on (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tg3_mac_loopback (struct tg3*,int) ;
 int tg3_setup_phy (struct tg3*,int) ;

__attribute__((used)) static void tg3_set_loopback(struct net_device *dev, netdev_features_t features)
{
 struct tg3 *tp = netdev_priv(dev);

 if (features & NETIF_F_LOOPBACK) {
  if (tp->mac_mode & MAC_MODE_PORT_INT_LPBACK)
   return;

  spin_lock_bh(&tp->lock);
  tg3_mac_loopback(tp, 1);
  netif_carrier_on(tp->dev);
  spin_unlock_bh(&tp->lock);
  netdev_info(dev, "Internal MAC loopback mode enabled.\n");
 } else {
  if (!(tp->mac_mode & MAC_MODE_PORT_INT_LPBACK))
   return;

  spin_lock_bh(&tp->lock);
  tg3_mac_loopback(tp, 0);

  tg3_setup_phy(tp, 1);
  spin_unlock_bh(&tp->lock);
  netdev_info(dev, "Internal MAC loopback mode disabled.\n");
 }
}
