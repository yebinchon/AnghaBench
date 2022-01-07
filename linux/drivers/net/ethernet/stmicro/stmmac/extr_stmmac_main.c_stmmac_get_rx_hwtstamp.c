
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct stmmac_priv {int dev; int adv_ts; TYPE_1__* plat; int hwts_rx_en; } ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct dma_desc {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_xgmac; scalar_t__ has_gmac4; } ;


 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int netdev_dbg (int ,char*,...) ;
 int ns_to_ktime (int ) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;
 scalar_t__ stmmac_get_rx_timestamp_status (struct stmmac_priv*,struct dma_desc*,struct dma_desc*,int ) ;
 int stmmac_get_timestamp (struct stmmac_priv*,struct dma_desc*,int ,int *) ;

__attribute__((used)) static void stmmac_get_rx_hwtstamp(struct stmmac_priv *priv, struct dma_desc *p,
       struct dma_desc *np, struct sk_buff *skb)
{
 struct skb_shared_hwtstamps *shhwtstamp = ((void*)0);
 struct dma_desc *desc = p;
 u64 ns = 0;

 if (!priv->hwts_rx_en)
  return;

 if (priv->plat->has_gmac4 || priv->plat->has_xgmac)
  desc = np;


 if (stmmac_get_rx_timestamp_status(priv, p, np, priv->adv_ts)) {
  stmmac_get_timestamp(priv, desc, priv->adv_ts, &ns);
  netdev_dbg(priv->dev, "get valid RX hw timestamp %llu\n", ns);
  shhwtstamp = skb_hwtstamps(skb);
  memset(shhwtstamp, 0, sizeof(struct skb_shared_hwtstamps));
  shhwtstamp->hwtstamp = ns_to_ktime(ns);
 } else {
  netdev_dbg(priv->dev, "cannot get RX hw timestamp\n");
 }
}
