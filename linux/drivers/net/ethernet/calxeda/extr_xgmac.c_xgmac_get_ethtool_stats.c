
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct xgmac_priv {int base; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int stat_offset; scalar_t__ is_reg; } ;


 int XGMAC_STATS_LEN ;
 struct xgmac_priv* netdev_priv (struct net_device*) ;
 int readl (int) ;
 TYPE_1__* xgmac_gstrings_stats ;

__attribute__((used)) static void xgmac_get_ethtool_stats(struct net_device *dev,
      struct ethtool_stats *dummy,
      u64 *data)
{
 struct xgmac_priv *priv = netdev_priv(dev);
 void *p = priv;
 int i;

 for (i = 0; i < XGMAC_STATS_LEN; i++) {
  if (xgmac_gstrings_stats[i].is_reg)
   *data++ = readl(priv->base +
    xgmac_gstrings_stats[i].stat_offset);
  else
   *data++ = *(u32 *)(p +
    xgmac_gstrings_stats[i].stat_offset);
 }
}
