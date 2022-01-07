
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct stmmac_priv {int dev; int hw; int adv_ts; int hwts_tx_en; } ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct dma_desc {int dummy; } ;
struct TYPE_2__ {int tx_flags; } ;


 int SKBTX_IN_PROGRESS ;
 scalar_t__ likely (int) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int netdev_dbg (int ,char*,int ) ;
 int ns_to_ktime (int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_tstamp_tx (struct sk_buff*,struct skb_shared_hwtstamps*) ;
 int stmmac_get_mac_tx_timestamp (struct stmmac_priv*,int ,int *) ;
 int stmmac_get_timestamp (struct stmmac_priv*,struct dma_desc*,int ,int *) ;
 scalar_t__ stmmac_get_tx_timestamp_status (struct stmmac_priv*,struct dma_desc*) ;

__attribute__((used)) static void stmmac_get_tx_hwtstamp(struct stmmac_priv *priv,
       struct dma_desc *p, struct sk_buff *skb)
{
 struct skb_shared_hwtstamps shhwtstamp;
 bool found = 0;
 u64 ns = 0;

 if (!priv->hwts_tx_en)
  return;


 if (likely(!skb || !(skb_shinfo(skb)->tx_flags & SKBTX_IN_PROGRESS)))
  return;


 if (stmmac_get_tx_timestamp_status(priv, p)) {
  stmmac_get_timestamp(priv, p, priv->adv_ts, &ns);
  found = 1;
 } else if (!stmmac_get_mac_tx_timestamp(priv, priv->hw, &ns)) {
  found = 1;
 }

 if (found) {
  memset(&shhwtstamp, 0, sizeof(struct skb_shared_hwtstamps));
  shhwtstamp.hwtstamp = ns_to_ktime(ns);

  netdev_dbg(priv->dev, "get valid TX hw timestamp %llu\n", ns);

  skb_tstamp_tx(skb, &shhwtstamp);
 }
}
