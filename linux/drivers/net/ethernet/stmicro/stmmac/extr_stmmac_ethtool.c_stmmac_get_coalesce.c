
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int rx_riwt; int rx_coal_frames; scalar_t__ use_riwt; int tx_coal_frames; int tx_coal_timer; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; int rx_max_coalesced_frames; int tx_max_coalesced_frames; int tx_coalesce_usecs; } ;


 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int stmmac_riwt2usec (int ,struct stmmac_priv*) ;

__attribute__((used)) static int stmmac_get_coalesce(struct net_device *dev,
          struct ethtool_coalesce *ec)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 ec->tx_coalesce_usecs = priv->tx_coal_timer;
 ec->tx_max_coalesced_frames = priv->tx_coal_frames;

 if (priv->use_riwt) {
  ec->rx_max_coalesced_frames = priv->rx_coal_frames;
  ec->rx_coalesce_usecs = stmmac_riwt2usec(priv->rx_riwt, priv);
 }

 return 0;
}
