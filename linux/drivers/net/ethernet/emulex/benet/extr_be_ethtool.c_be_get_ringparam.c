
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int tx_max_pending; int rx_pending; int rx_max_pending; } ;
struct be_adapter {TYPE_2__* tx_obj; TYPE_4__* rx_obj; } ;
struct TYPE_7__ {int len; } ;
struct TYPE_8__ {TYPE_3__ q; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_6__ {TYPE_1__ q; } ;


 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void be_get_ringparam(struct net_device *netdev,
        struct ethtool_ringparam *ring)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 ring->rx_max_pending = adapter->rx_obj[0].q.len;
 ring->rx_pending = adapter->rx_obj[0].q.len;
 ring->tx_max_pending = adapter->tx_obj[0].q.len;
 ring->tx_pending = adapter->tx_obj[0].q.len;
}
