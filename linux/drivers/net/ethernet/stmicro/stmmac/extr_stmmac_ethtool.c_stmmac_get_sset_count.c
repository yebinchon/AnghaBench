
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int asp; int rmon; } ;
struct stmmac_priv {int sstats; TYPE_1__ dma_cap; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;


 int STMMAC_MMC_STATS_LEN ;
 int STMMAC_SAFETY_FEAT_SIZE ;
 int STMMAC_STATS_LEN ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int stmmac_safety_feat_dump (struct stmmac_priv*,int *,int,int *,int *) ;
 int stmmac_selftest_get_count (struct stmmac_priv*) ;

__attribute__((used)) static int stmmac_get_sset_count(struct net_device *netdev, int sset)
{
 struct stmmac_priv *priv = netdev_priv(netdev);
 int i, len, safety_len = 0;

 switch (sset) {
 case 129:
  len = STMMAC_STATS_LEN;

  if (priv->dma_cap.rmon)
   len += STMMAC_MMC_STATS_LEN;
  if (priv->dma_cap.asp) {
   for (i = 0; i < STMMAC_SAFETY_FEAT_SIZE; i++) {
    if (!stmmac_safety_feat_dump(priv,
       &priv->sstats, i,
       ((void*)0), ((void*)0)))
     safety_len++;
   }

   len += safety_len;
  }

  return len;
 case 128:
  return stmmac_selftest_get_count(priv);
 default:
  return -EOPNOTSUPP;
 }
}
