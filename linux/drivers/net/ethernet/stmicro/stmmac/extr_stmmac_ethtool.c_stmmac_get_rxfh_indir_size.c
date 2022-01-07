
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int table; } ;
struct stmmac_priv {TYPE_1__ rss; } ;
struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 stmmac_get_rxfh_indir_size(struct net_device *dev)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 return ARRAY_SIZE(priv->rss.table);
}
