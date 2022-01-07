
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmmac_priv {int rx_copybreak; } ;
struct net_device {int dummy; } ;
struct ethtool_tunable {int id; } ;


 int EINVAL ;

 struct stmmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int stmmac_get_tunable(struct net_device *dev,
         const struct ethtool_tunable *tuna, void *data)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 int ret = 0;

 switch (tuna->id) {
 case 128:
  *(u32 *)data = priv->rx_copybreak;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
