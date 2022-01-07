
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netsec_priv {int rx_cksum_offload_flag; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_RXCSUM ;
 struct netsec_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netsec_netdev_set_features(struct net_device *ndev,
          netdev_features_t features)
{
 struct netsec_priv *priv = netdev_priv(ndev);

 priv->rx_cksum_offload_flag = !!(features & NETIF_F_RXCSUM);

 return 0;
}
