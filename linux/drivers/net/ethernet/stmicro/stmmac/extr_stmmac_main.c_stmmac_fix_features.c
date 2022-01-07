
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tsoen; } ;
struct stmmac_priv {int tso; TYPE_1__ dma_cap; TYPE_2__* plat; } ;
struct net_device {scalar_t__ mtu; } ;
typedef int netdev_features_t ;
struct TYPE_4__ {scalar_t__ rx_coe; scalar_t__ tso_en; scalar_t__ bugged_jumbo; int tx_coe; } ;


 scalar_t__ ETH_DATA_LEN ;
 int NETIF_F_CSUM_MASK ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_TSO ;
 scalar_t__ STMMAC_RX_COE_NONE ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_features_t stmmac_fix_features(struct net_device *dev,
          netdev_features_t features)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 if (priv->plat->rx_coe == STMMAC_RX_COE_NONE)
  features &= ~NETIF_F_RXCSUM;

 if (!priv->plat->tx_coe)
  features &= ~NETIF_F_CSUM_MASK;






 if (priv->plat->bugged_jumbo && (dev->mtu > ETH_DATA_LEN))
  features &= ~NETIF_F_CSUM_MASK;


 if ((priv->plat->tso_en) && (priv->dma_cap.tsoen)) {
  if (features & NETIF_F_TSO)
   priv->tso = 1;
  else
   priv->tso = 0;
 }

 return features;
}
