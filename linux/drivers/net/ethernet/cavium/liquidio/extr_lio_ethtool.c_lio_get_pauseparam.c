
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int rx_pause; int tx_pause; } ;
struct net_device {int dummy; } ;
struct lio {struct octeon_device* oct_dev; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; scalar_t__ autoneg; } ;


 struct lio* GET_LIO (struct net_device*) ;

__attribute__((used)) static void
lio_get_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
{



 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = lio->oct_dev;

 pause->autoneg = 0;

 pause->tx_pause = oct->tx_pause;
 pause->rx_pause = oct->rx_pause;
}
