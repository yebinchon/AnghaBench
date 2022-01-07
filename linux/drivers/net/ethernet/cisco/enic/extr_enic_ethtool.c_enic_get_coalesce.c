
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int use_adaptive_rx_coalesce; int rx_coalesce_usecs_high; int rx_coalesce_usecs_low; int rx_coalesce_usecs; int tx_coalesce_usecs; } ;
struct enic_rx_coal {int range_end; int small_pkt_range_start; scalar_t__ use_adaptive_rx_coalesce; } ;
struct enic {int rx_coalesce_usecs; int tx_coalesce_usecs; int vdev; struct enic_rx_coal rx_coalesce_setting; } ;


 scalar_t__ VNIC_DEV_INTR_MODE_MSIX ;
 struct enic* netdev_priv (struct net_device*) ;
 scalar_t__ vnic_dev_get_intr_mode (int ) ;

__attribute__((used)) static int enic_get_coalesce(struct net_device *netdev,
 struct ethtool_coalesce *ecmd)
{
 struct enic *enic = netdev_priv(netdev);
 struct enic_rx_coal *rxcoal = &enic->rx_coalesce_setting;

 if (vnic_dev_get_intr_mode(enic->vdev) == VNIC_DEV_INTR_MODE_MSIX)
  ecmd->tx_coalesce_usecs = enic->tx_coalesce_usecs;
 ecmd->rx_coalesce_usecs = enic->rx_coalesce_usecs;
 if (rxcoal->use_adaptive_rx_coalesce)
  ecmd->use_adaptive_rx_coalesce = 1;
 ecmd->rx_coalesce_usecs_low = rxcoal->small_pkt_range_start;
 ecmd->rx_coalesce_usecs_high = rxcoal->range_end;

 return 0;
}
