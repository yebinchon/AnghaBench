
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_priv {TYPE_1__* plat; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int data; } ;
struct TYPE_2__ {int rx_queues_to_use; } ;


 int EOPNOTSUPP ;

 struct stmmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int stmmac_get_rxnfc(struct net_device *dev,
       struct ethtool_rxnfc *rxnfc, u32 *rule_locs)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 switch (rxnfc->cmd) {
 case 128:
  rxnfc->data = priv->plat->rx_queues_to_use;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
