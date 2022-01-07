
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int rmon; int asp; } ;
struct stmmac_priv {TYPE_1__ dma_cap; int sstats; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {char const* stat_string; } ;
struct TYPE_5__ {char const* stat_string; } ;


 int ETH_GSTRING_LEN ;


 int STMMAC_MMC_STATS_LEN ;
 int STMMAC_SAFETY_FEAT_SIZE ;
 int STMMAC_STATS_LEN ;
 int WARN_ON (int) ;
 int memcpy (int *,char const*,int ) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 TYPE_3__* stmmac_gstrings_stats ;
 TYPE_2__* stmmac_mmc ;
 int stmmac_safety_feat_dump (struct stmmac_priv*,int *,int,int *,char const**) ;
 int stmmac_selftest_get_strings (struct stmmac_priv*,int *) ;

__attribute__((used)) static void stmmac_get_strings(struct net_device *dev, u32 stringset, u8 *data)
{
 int i;
 u8 *p = data;
 struct stmmac_priv *priv = netdev_priv(dev);

 switch (stringset) {
 case 129:
  if (priv->dma_cap.asp) {
   for (i = 0; i < STMMAC_SAFETY_FEAT_SIZE; i++) {
    const char *desc;
    if (!stmmac_safety_feat_dump(priv,
       &priv->sstats, i,
       ((void*)0), &desc)) {
     memcpy(p, desc, ETH_GSTRING_LEN);
     p += ETH_GSTRING_LEN;
    }
   }
  }
  if (priv->dma_cap.rmon)
   for (i = 0; i < STMMAC_MMC_STATS_LEN; i++) {
    memcpy(p, stmmac_mmc[i].stat_string,
           ETH_GSTRING_LEN);
    p += ETH_GSTRING_LEN;
   }
  for (i = 0; i < STMMAC_STATS_LEN; i++) {
   memcpy(p, stmmac_gstrings_stats[i].stat_string,
    ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  break;
 case 128:
  stmmac_selftest_get_strings(priv, p);
  break;
 default:
  WARN_ON(1);
  break;
 }
}
