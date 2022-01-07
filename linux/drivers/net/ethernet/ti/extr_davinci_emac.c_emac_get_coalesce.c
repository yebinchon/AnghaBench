
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;
struct emac_priv {int coal_intvl; } ;


 struct emac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int emac_get_coalesce(struct net_device *ndev,
    struct ethtool_coalesce *coal)
{
 struct emac_priv *priv = netdev_priv(ndev);

 coal->rx_coalesce_usecs = priv->coal_intvl;
 return 0;

}
