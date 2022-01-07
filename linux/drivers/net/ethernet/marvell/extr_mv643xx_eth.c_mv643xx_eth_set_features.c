
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mv643xx_eth_private {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_RXCSUM ;
 int PORT_CONFIG ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;
 int wrlp (struct mv643xx_eth_private*,int ,int) ;

__attribute__((used)) static int
mv643xx_eth_set_features(struct net_device *dev, netdev_features_t features)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);
 bool rx_csum = features & NETIF_F_RXCSUM;

 wrlp(mp, PORT_CONFIG, rx_csum ? 0x02000000 : 0x00000000);

 return 0;
}
