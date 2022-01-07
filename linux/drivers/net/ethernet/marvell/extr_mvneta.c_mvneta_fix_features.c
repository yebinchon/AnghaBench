
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mtu; } ;
struct mvneta_port {scalar_t__ tx_csum_limit; } ;
typedef int netdev_features_t ;


 int NETIF_F_IP_CSUM ;
 int NETIF_F_TSO ;
 int netdev_info (struct net_device*,char*,scalar_t__) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_features_t mvneta_fix_features(struct net_device *dev,
          netdev_features_t features)
{
 struct mvneta_port *pp = netdev_priv(dev);

 if (pp->tx_csum_limit && dev->mtu > pp->tx_csum_limit) {
  features &= ~(NETIF_F_IP_CSUM | NETIF_F_TSO);
  netdev_info(dev,
       "Disable IP checksum for MTU greater than %dB\n",
       pp->tx_csum_limit);
 }

 return features;
}
