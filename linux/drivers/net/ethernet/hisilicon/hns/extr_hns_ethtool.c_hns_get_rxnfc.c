
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct hns_nic_priv {TYPE_1__* ae_handle; } ;
struct ethtool_rxnfc {int cmd; int data; } ;
struct TYPE_2__ {int q_num; } ;


 int EOPNOTSUPP ;

 struct hns_nic_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int hns_get_rxnfc(struct net_device *netdev,
    struct ethtool_rxnfc *cmd,
    u32 *rule_locs)
{
 struct hns_nic_priv *priv = netdev_priv(netdev);

 switch (cmd->cmd) {
 case 128:
  cmd->data = priv->ae_handle->q_num;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
