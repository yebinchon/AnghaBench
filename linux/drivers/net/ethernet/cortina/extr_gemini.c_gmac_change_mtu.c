
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int CONFIG0_MAXLEN_MASK ;
 int CONFIG0_MAXLEN_SHIFT ;
 int EINVAL ;
 int gmac_disable_tx_rx (struct net_device*) ;
 int gmac_enable_tx_rx (struct net_device*) ;
 int gmac_pick_rx_max_len (int) ;
 int gmac_update_config0_reg (struct net_device*,int,int ) ;
 int netdev_update_features (struct net_device*) ;

__attribute__((used)) static int gmac_change_mtu(struct net_device *netdev, int new_mtu)
{
 int max_len = gmac_pick_rx_max_len(new_mtu);

 if (max_len < 0)
  return -EINVAL;

 gmac_disable_tx_rx(netdev);

 netdev->mtu = new_mtu;
 gmac_update_config0_reg(netdev, max_len << CONFIG0_MAXLEN_SHIFT,
    CONFIG0_MAXLEN_MASK);

 netdev_update_features(netdev);

 gmac_enable_tx_rx(netdev);

 return 0;
}
