
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_pauseparam {int autoneg; int rx_pause; int tx_pause; } ;
struct TYPE_2__ {int fc_autoneg; } ;
struct be_adapter {TYPE_1__ phy; } ;


 int be_cmd_get_flow_control (struct be_adapter*,int *,int *) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
be_get_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *ecmd)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 be_cmd_get_flow_control(adapter, &ecmd->tx_pause, &ecmd->rx_pause);
 ecmd->autoneg = adapter->phy.fc_autoneg;
}
