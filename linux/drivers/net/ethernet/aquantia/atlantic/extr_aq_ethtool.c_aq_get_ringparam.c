
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_max_pending; int rx_max_pending; int tx_pending; int rx_pending; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {TYPE_1__* aq_hw_caps; int txds; int rxds; } ;
struct TYPE_2__ {int txds_max; int rxds_max; } ;


 struct aq_nic_cfg_s* aq_nic_get_cfg (struct aq_nic_s*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static void aq_get_ringparam(struct net_device *ndev,
        struct ethtool_ringparam *ring)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 struct aq_nic_cfg_s *aq_nic_cfg = aq_nic_get_cfg(aq_nic);

 ring->rx_pending = aq_nic_cfg->rxds;
 ring->tx_pending = aq_nic_cfg->txds;

 ring->rx_max_pending = aq_nic_cfg->aq_hw_caps->rxds_max;
 ring->tx_max_pending = aq_nic_cfg->aq_hw_caps->txds_max;
}
