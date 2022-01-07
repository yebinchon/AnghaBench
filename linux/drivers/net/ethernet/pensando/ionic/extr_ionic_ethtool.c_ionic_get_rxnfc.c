
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ionic_lif {int nxqs; } ;
struct ethtool_rxnfc {int cmd; int data; } ;


 int EOPNOTSUPP ;

 int netdev_err (struct net_device*,char*,int) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ionic_get_rxnfc(struct net_device *netdev,
      struct ethtool_rxnfc *info, u32 *rules)
{
 struct ionic_lif *lif = netdev_priv(netdev);
 int err = 0;

 switch (info->cmd) {
 case 128:
  info->data = lif->nxqs;
  break;
 default:
  netdev_err(netdev, "Command parameter %d is not supported\n",
      info->cmd);
  err = -EOPNOTSUPP;
 }

 return err;
}
