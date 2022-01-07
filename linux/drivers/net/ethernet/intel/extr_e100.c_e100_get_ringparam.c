
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct param_range {int count; int max; } ;
struct TYPE_2__ {struct param_range cbs; struct param_range rfds; } ;
struct nic {TYPE_1__ params; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static void e100_get_ringparam(struct net_device *netdev,
 struct ethtool_ringparam *ring)
{
 struct nic *nic = netdev_priv(netdev);
 struct param_range *rfds = &nic->params.rfds;
 struct param_range *cbs = &nic->params.cbs;

 ring->rx_max_pending = rfds->max;
 ring->tx_max_pending = cbs->max;
 ring->rx_pending = rfds->count;
 ring->tx_pending = cbs->count;
}
