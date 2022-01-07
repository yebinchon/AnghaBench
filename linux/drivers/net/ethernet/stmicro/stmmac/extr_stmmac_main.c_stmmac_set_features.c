
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stmmac_priv {int ioaddr; TYPE_1__* plat; scalar_t__ sph; TYPE_2__* hw; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;
struct TYPE_4__ {scalar_t__ rx_csum; } ;
struct TYPE_3__ {scalar_t__ rx_coe; scalar_t__ rx_queues_to_use; } ;


 int NETIF_F_RXCSUM ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int stmmac_enable_sph (struct stmmac_priv*,int ,int,scalar_t__) ;
 int stmmac_rx_ipc (struct stmmac_priv*,TYPE_2__*) ;

__attribute__((used)) static int stmmac_set_features(struct net_device *netdev,
          netdev_features_t features)
{
 struct stmmac_priv *priv = netdev_priv(netdev);
 bool sph_en;
 u32 chan;


 if (features & NETIF_F_RXCSUM)
  priv->hw->rx_csum = priv->plat->rx_coe;
 else
  priv->hw->rx_csum = 0;



 stmmac_rx_ipc(priv, priv->hw);

 sph_en = (priv->hw->rx_csum > 0) && priv->sph;
 for (chan = 0; chan < priv->plat->rx_queues_to_use; chan++)
  stmmac_enable_sph(priv, priv->ioaddr, sph_en, chan);

 return 0;
}
