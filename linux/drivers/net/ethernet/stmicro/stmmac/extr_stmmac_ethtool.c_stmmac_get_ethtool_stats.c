
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned long u64 ;
typedef unsigned long u32 ;
struct TYPE_8__ {int phy_eee_wakeup_error_n; } ;
struct TYPE_7__ {scalar_t__ rmon; scalar_t__ asp; } ;
struct stmmac_priv {scalar_t__ synopsys_id; TYPE_3__ xstats; int ioaddr; int phylink; scalar_t__ eee_enabled; int mmc; int mmcaddr; TYPE_2__ dma_cap; int sstats; TYPE_1__* plat; } ;
struct net_device {int stats; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_10__ {int stat_offset; int sizeof_stat; } ;
struct TYPE_9__ {int stat_offset; int sizeof_stat; } ;
struct TYPE_6__ {unsigned long rx_queues_to_use; unsigned long tx_queues_to_use; } ;


 scalar_t__ DWMAC_CORE_3_50 ;
 int STMMAC_MMC_STATS_LEN ;
 int STMMAC_SAFETY_FEAT_SIZE ;
 int STMMAC_STATS_LEN ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int phylink_get_eee_err (int ) ;
 int stmmac_dma_diagnostic_fr (struct stmmac_priv*,int *,void*,int ) ;
 TYPE_5__* stmmac_gstrings_stats ;
 int stmmac_mac_debug (struct stmmac_priv*,int ,void*,unsigned long,unsigned long) ;
 TYPE_4__* stmmac_mmc ;
 int stmmac_mmc_read (struct stmmac_priv*,int ,int *) ;
 int stmmac_safety_feat_dump (struct stmmac_priv*,int *,int,unsigned long*,int *) ;

__attribute__((used)) static void stmmac_get_ethtool_stats(struct net_device *dev,
     struct ethtool_stats *dummy, u64 *data)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 u32 rx_queues_count = priv->plat->rx_queues_to_use;
 u32 tx_queues_count = priv->plat->tx_queues_to_use;
 unsigned long count;
 int i, j = 0, ret;

 if (priv->dma_cap.asp) {
  for (i = 0; i < STMMAC_SAFETY_FEAT_SIZE; i++) {
   if (!stmmac_safety_feat_dump(priv, &priv->sstats, i,
      &count, ((void*)0)))
    data[j++] = count;
  }
 }


 ret = stmmac_dma_diagnostic_fr(priv, &dev->stats, (void *) &priv->xstats,
   priv->ioaddr);
 if (ret) {

  if (priv->dma_cap.rmon) {
   stmmac_mmc_read(priv, priv->mmcaddr, &priv->mmc);

   for (i = 0; i < STMMAC_MMC_STATS_LEN; i++) {
    char *p;
    p = (char *)priv + stmmac_mmc[i].stat_offset;

    data[j++] = (stmmac_mmc[i].sizeof_stat ==
          sizeof(u64)) ? (*(u64 *)p) :
          (*(u32 *)p);
   }
  }
  if (priv->eee_enabled) {
   int val = phylink_get_eee_err(priv->phylink);
   if (val)
    priv->xstats.phy_eee_wakeup_error_n = val;
  }

  if (priv->synopsys_id >= DWMAC_CORE_3_50)
   stmmac_mac_debug(priv, priv->ioaddr,
     (void *)&priv->xstats,
     rx_queues_count, tx_queues_count);
 }
 for (i = 0; i < STMMAC_STATS_LEN; i++) {
  char *p = (char *)priv + stmmac_gstrings_stats[i].stat_offset;
  data[j++] = (stmmac_gstrings_stats[i].sizeof_stat ==
        sizeof(u64)) ? (*(u64 *)p) : (*(u32 *)p);
 }
}
