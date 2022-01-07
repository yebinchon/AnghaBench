
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct iavf_adapter {int num_active_queues; } ;
struct ethtool_rxnfc {int cmd; int data; } ;


 int EOPNOTSUPP ;


 int netdev_info (struct net_device*,char*) ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int iavf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
     u32 *rule_locs)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);
 int ret = -EOPNOTSUPP;

 switch (cmd->cmd) {
 case 128:
  cmd->data = adapter->num_active_queues;
  ret = 0;
  break;
 case 129:
  netdev_info(netdev,
       "RSS hash info is not available to vf, use pf.\n");
  break;
 default:
  break;
 }

 return ret;
}
