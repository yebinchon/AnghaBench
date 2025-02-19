
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int requested_fc; int fc; } ;
struct port_info {TYPE_1__ link_cfg; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int autoneg; int rx_pause; int tx_pause; } ;


 int PAUSE_AUTONEG ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static void cxgb4vf_get_pauseparam(struct net_device *dev,
       struct ethtool_pauseparam *pauseparam)
{
 struct port_info *pi = netdev_priv(dev);

 pauseparam->autoneg = (pi->link_cfg.requested_fc & PAUSE_AUTONEG) != 0;
 pauseparam->rx_pause = (pi->link_cfg.fc & PAUSE_RX) != 0;
 pauseparam->tx_pause = (pi->link_cfg.fc & PAUSE_TX) != 0;
}
