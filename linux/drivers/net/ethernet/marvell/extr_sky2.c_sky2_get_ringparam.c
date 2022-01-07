
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {int tx_pending; int rx_pending; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 int RX_MAX_PENDING ;
 int TX_MAX_PENDING ;
 struct sky2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void sky2_get_ringparam(struct net_device *dev,
          struct ethtool_ringparam *ering)
{
 struct sky2_port *sky2 = netdev_priv(dev);

 ering->rx_max_pending = RX_MAX_PENDING;
 ering->tx_max_pending = TX_MAX_PENDING;

 ering->rx_pending = sky2->rx_pending;
 ering->tx_pending = sky2->tx_pending;
}
