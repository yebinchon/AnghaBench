
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;

 int be_multi_rxq (struct be_adapter*) ;
 int be_set_rss_hash_opts (struct be_adapter*,struct ethtool_rxnfc*) ;
 int dev_err (int *,char*) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 int status = 0;

 if (!be_multi_rxq(adapter)) {
  dev_err(&adapter->pdev->dev,
   "ethtool::set_rxnfc: RX flow hashing is disabled\n");
  return -EINVAL;
 }

 switch (cmd->cmd) {
 case 128:
  status = be_set_rss_hash_opts(adapter, cmd);
  break;
 default:
  return -EINVAL;
 }

 return status;
}
