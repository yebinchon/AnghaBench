
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int data; } ;
struct ena_adapter {int ena_dev; int num_queues; } ;


 int EOPNOTSUPP ;





 int drv ;
 int ena_get_rss_hash (int ,struct ethtool_rxnfc*) ;
 struct ena_adapter* netdev_priv (struct net_device*) ;
 int netif_err (struct ena_adapter*,int ,struct net_device*,char*,int) ;

__attribute__((used)) static int ena_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *info,
    u32 *rules)
{
 struct ena_adapter *adapter = netdev_priv(netdev);
 int rc = 0;

 switch (info->cmd) {
 case 128:
  info->data = adapter->num_queues;
  rc = 0;
  break;
 case 129:
  rc = ena_get_rss_hash(adapter->ena_dev, info);
  break;
 case 131:
 case 130:
 case 132:
 default:
  netif_err(adapter, drv, netdev,
     "Command parameter %d is not supported\n", info->cmd);
  rc = -EOPNOTSUPP;
 }

 return rc;
}
