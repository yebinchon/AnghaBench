
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int key; int * table; } ;
struct stmmac_priv {TYPE_1__ rss; } ;
struct net_device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int ETH_RSS_HASH_TOP ;
 int memcpy (int *,int ,int) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int stmmac_get_rxfh(struct net_device *dev, u32 *indir, u8 *key,
      u8 *hfunc)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 int i;

 if (indir) {
  for (i = 0; i < ARRAY_SIZE(priv->rss.table); i++)
   indir[i] = priv->rss.table[i];
 }

 if (key)
  memcpy(key, priv->rss.key, sizeof(priv->rss.key));
 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;

 return 0;
}
