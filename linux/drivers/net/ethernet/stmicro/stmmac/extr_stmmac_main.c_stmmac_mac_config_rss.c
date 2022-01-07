
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int enable; } ;
struct TYPE_5__ {int rssen; } ;
struct stmmac_priv {TYPE_2__* plat; TYPE_4__ rss; int hw; TYPE_3__* dev; TYPE_1__ dma_cap; } ;
struct TYPE_7__ {int features; } ;
struct TYPE_6__ {int rx_queues_to_use; int rss_en; } ;


 int NETIF_F_RXHASH ;
 int stmmac_rss_configure (struct stmmac_priv*,int ,TYPE_4__*,int ) ;

__attribute__((used)) static void stmmac_mac_config_rss(struct stmmac_priv *priv)
{
 if (!priv->dma_cap.rssen || !priv->plat->rss_en) {
  priv->rss.enable = 0;
  return;
 }

 if (priv->dev->features & NETIF_F_RXHASH)
  priv->rss.enable = 1;
 else
  priv->rss.enable = 0;

 stmmac_rss_configure(priv, priv->hw, &priv->rss,
        priv->plat->rx_queues_to_use);
}
