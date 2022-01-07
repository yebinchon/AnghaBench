
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; scalar_t__ autoneg; } ;
struct TYPE_2__ {int flow_control; } ;
struct aq_nic_s {TYPE_1__ aq_nic_cfg; } ;


 int AQ_NIC_FC_RX ;
 int AQ_NIC_FC_TX ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static void aq_ethtool_get_pauseparam(struct net_device *ndev,
          struct ethtool_pauseparam *pause)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 u32 fc = aq_nic->aq_nic_cfg.flow_control;

 pause->autoneg = 0;

 pause->rx_pause = !!(fc & AQ_NIC_FC_RX);
 pause->tx_pause = !!(fc & AQ_NIC_FC_TX);

}
