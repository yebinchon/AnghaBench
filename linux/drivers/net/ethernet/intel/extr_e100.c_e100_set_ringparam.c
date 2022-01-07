
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct param_range {void* count; int max; int min; } ;
struct TYPE_2__ {struct param_range cbs; struct param_range rfds; } ;
struct nic {int netdev; TYPE_1__ params; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;


 int EINVAL ;
 int drv ;
 int e100_down (struct nic*) ;
 int e100_up (struct nic*) ;
 void* max (int ,int ) ;
 void* min (void*,int ) ;
 struct nic* netdev_priv (struct net_device*) ;
 int netif_info (struct nic*,int ,int ,char*,void*,void*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int e100_set_ringparam(struct net_device *netdev,
 struct ethtool_ringparam *ring)
{
 struct nic *nic = netdev_priv(netdev);
 struct param_range *rfds = &nic->params.rfds;
 struct param_range *cbs = &nic->params.cbs;

 if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
  return -EINVAL;

 if (netif_running(netdev))
  e100_down(nic);
 rfds->count = max(ring->rx_pending, rfds->min);
 rfds->count = min(rfds->count, rfds->max);
 cbs->count = max(ring->tx_pending, cbs->min);
 cbs->count = min(cbs->count, cbs->max);
 netif_info(nic, drv, nic->netdev, "Ring Param settings: rx: %d, tx %d\n",
     rfds->count, cbs->count);
 if (netif_running(netdev))
  e100_up(nic);

 return 0;
}
