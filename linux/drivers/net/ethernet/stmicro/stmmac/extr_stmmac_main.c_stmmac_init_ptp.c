
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ time_stamp; scalar_t__ atime_stamp; } ;
struct stmmac_priv {int adv_ts; scalar_t__ hwts_rx_en; scalar_t__ hwts_tx_en; int dev; TYPE_2__ dma_cap; scalar_t__ extend_desc; TYPE_1__* plat; } ;
struct TYPE_3__ {scalar_t__ has_xgmac; scalar_t__ has_gmac4; } ;


 int EOPNOTSUPP ;
 int netdev_info (int ,char*) ;
 int stmmac_ptp_register (struct stmmac_priv*) ;

__attribute__((used)) static int stmmac_init_ptp(struct stmmac_priv *priv)
{
 bool xmac = priv->plat->has_gmac4 || priv->plat->has_xgmac;

 if (!(priv->dma_cap.time_stamp || priv->dma_cap.atime_stamp))
  return -EOPNOTSUPP;

 priv->adv_ts = 0;

 if (xmac && priv->dma_cap.atime_stamp)
  priv->adv_ts = 1;

 else if (priv->extend_desc && priv->dma_cap.atime_stamp)
  priv->adv_ts = 1;

 if (priv->dma_cap.time_stamp)
  netdev_info(priv->dev, "IEEE 1588-2002 Timestamp supported\n");

 if (priv->adv_ts)
  netdev_info(priv->dev,
       "IEEE 1588-2008 Advanced Timestamp supported\n");

 priv->hwts_tx_en = 0;
 priv->hwts_rx_en = 0;

 stmmac_ptp_register(priv);

 return 0;
}
