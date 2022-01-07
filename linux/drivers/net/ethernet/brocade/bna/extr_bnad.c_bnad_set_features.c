
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int features; } ;
struct bnad {int bna_lock; TYPE_1__* rx_info; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int rx; } ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int bna_rx_vlan_strip_disable (int ) ;
 int bna_rx_vlan_strip_enable (int ) ;
 struct bnad* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bnad_set_features(struct net_device *dev, netdev_features_t features)
{
 struct bnad *bnad = netdev_priv(dev);
 netdev_features_t changed = features ^ dev->features;

 if ((changed & NETIF_F_HW_VLAN_CTAG_RX) && netif_running(dev)) {
  unsigned long flags;

  spin_lock_irqsave(&bnad->bna_lock, flags);

  if (features & NETIF_F_HW_VLAN_CTAG_RX)
   bna_rx_vlan_strip_enable(bnad->rx_info[0].rx);
  else
   bna_rx_vlan_strip_disable(bnad->rx_info[0].rx);

  spin_unlock_irqrestore(&bnad->bna_lock, flags);
 }

 return 0;
}
