
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_4__ {int key; int * table; } ;
struct stmmac_priv {TYPE_1__* plat; TYPE_2__ rss; int hw; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int rx_queues_to_use; } ;


 int ARRAY_SIZE (int *) ;
 int EOPNOTSUPP ;
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ;
 scalar_t__ const ETH_RSS_HASH_TOP ;
 int memcpy (int ,scalar_t__ const*,int) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int stmmac_rss_configure (struct stmmac_priv*,int ,TYPE_2__*,int ) ;

__attribute__((used)) static int stmmac_set_rxfh(struct net_device *dev, const u32 *indir,
      const u8 *key, const u8 hfunc)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 int i;

 if ((hfunc != ETH_RSS_HASH_NO_CHANGE) && (hfunc != ETH_RSS_HASH_TOP))
  return -EOPNOTSUPP;

 if (indir) {
  for (i = 0; i < ARRAY_SIZE(priv->rss.table); i++)
   priv->rss.table[i] = indir[i];
 }

 if (key)
  memcpy(priv->rss.key, key, sizeof(priv->rss.key));

 return stmmac_rss_configure(priv, priv->hw, &priv->rss,
        priv->plat->rx_queues_to_use);
}
