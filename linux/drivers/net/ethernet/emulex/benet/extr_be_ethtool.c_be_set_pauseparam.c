
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; int rx_pause; int tx_pause; } ;
struct TYPE_3__ {scalar_t__ fc_autoneg; } ;
struct be_adapter {int rx_fc; int tx_fc; TYPE_2__* pdev; TYPE_1__ phy; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int be_cmd_set_flow_control (struct be_adapter*,int ,int ) ;
 int be_cmd_status (int) ;
 int dev_warn (int *,char*) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
be_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *ecmd)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 int status;

 if (ecmd->autoneg != adapter->phy.fc_autoneg)
  return -EINVAL;

 status = be_cmd_set_flow_control(adapter, ecmd->tx_pause,
      ecmd->rx_pause);
 if (status) {
  dev_warn(&adapter->pdev->dev, "Pause param set failed\n");
  return be_cmd_status(status);
 }

 adapter->tx_fc = ecmd->tx_pause;
 adapter->rx_fc = ecmd->rx_pause;
 return 0;
}
