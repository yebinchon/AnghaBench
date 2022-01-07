
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct lio {int dev_capability; int enc_dev_capability; } ;
typedef int netdev_features_t ;


 int NETIF_F_LRO ;
 int NETIF_F_RXCSUM ;
 int OCTNET_CMD_LRO_DISABLE ;
 int OCTNET_CMD_LRO_ENABLE ;
 int OCTNET_CMD_RXCSUM_DISABLE ;
 int OCTNET_CMD_RXCSUM_ENABLE ;
 int OCTNET_CMD_TNL_RX_CSUM_CTL ;
 int OCTNIC_LROIPV4 ;
 int OCTNIC_LROIPV6 ;
 int liquidio_set_feature (struct net_device*,int ,int) ;
 int liquidio_set_rxcsum_command (struct net_device*,int ,int ) ;
 struct lio* netdev_priv (struct net_device*) ;

__attribute__((used)) static int liquidio_set_features(struct net_device *netdev,
     netdev_features_t features)
{
 struct lio *lio = netdev_priv(netdev);

 if (!((netdev->features ^ features) & NETIF_F_LRO))
  return 0;

 if ((features & NETIF_F_LRO) && (lio->dev_capability & NETIF_F_LRO))
  liquidio_set_feature(netdev, OCTNET_CMD_LRO_ENABLE,
         OCTNIC_LROIPV4 | OCTNIC_LROIPV6);
 else if (!(features & NETIF_F_LRO) &&
   (lio->dev_capability & NETIF_F_LRO))
  liquidio_set_feature(netdev, OCTNET_CMD_LRO_DISABLE,
         OCTNIC_LROIPV4 | OCTNIC_LROIPV6);
 if (!(netdev->features & NETIF_F_RXCSUM) &&
     (lio->enc_dev_capability & NETIF_F_RXCSUM) &&
     (features & NETIF_F_RXCSUM))
  liquidio_set_rxcsum_command(netdev, OCTNET_CMD_TNL_RX_CSUM_CTL,
         OCTNET_CMD_RXCSUM_ENABLE);
 else if ((netdev->features & NETIF_F_RXCSUM) &&
   (lio->enc_dev_capability & NETIF_F_RXCSUM) &&
   !(features & NETIF_F_RXCSUM))
  liquidio_set_rxcsum_command(netdev, OCTNET_CMD_TNL_RX_CSUM_CTL,
         OCTNET_CMD_RXCSUM_DISABLE);

 return 0;
}
