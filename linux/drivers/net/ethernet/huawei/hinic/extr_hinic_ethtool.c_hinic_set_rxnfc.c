
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hinic_dev {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;


 int EOPNOTSUPP ;

 int hinic_set_rss_hash_opts (struct hinic_dev*,struct ethtool_rxnfc*) ;
 struct hinic_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int hinic_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
{
 struct hinic_dev *nic_dev = netdev_priv(netdev);
 int err = 0;

 switch (cmd->cmd) {
 case 128:
  err = hinic_set_rss_hash_opts(nic_dev, cmd);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}
