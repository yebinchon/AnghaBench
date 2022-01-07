
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int alloc; } ;
struct TYPE_3__ {int alloc; } ;
struct ksz_hw {TYPE_2__ rx_desc_info; TYPE_1__ tx_desc_info; } ;
struct ethtool_ringparam {int tx_max_pending; int rx_max_pending; int rx_pending; int tx_pending; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {struct ksz_hw hw; } ;


 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void netdev_get_ringparam(struct net_device *dev,
 struct ethtool_ringparam *ring)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;
 struct ksz_hw *hw = &hw_priv->hw;

 ring->tx_max_pending = (1 << 9);
 ring->tx_pending = hw->tx_desc_info.alloc;
 ring->rx_max_pending = (1 << 9);
 ring->rx_pending = hw->rx_desc_info.alloc;
}
