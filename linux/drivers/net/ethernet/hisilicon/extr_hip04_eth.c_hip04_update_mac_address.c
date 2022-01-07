
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int* dev_addr; } ;
struct hip04_priv {scalar_t__ base; } ;


 scalar_t__ GE_STATION_MAC_ADDRESS ;
 struct hip04_priv* netdev_priv (struct net_device*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void hip04_update_mac_address(struct net_device *ndev)
{
 struct hip04_priv *priv = netdev_priv(ndev);

 writel_relaxed(((ndev->dev_addr[0] << 8) | (ndev->dev_addr[1])),
         priv->base + GE_STATION_MAC_ADDRESS);
 writel_relaxed(((ndev->dev_addr[2] << 24) | (ndev->dev_addr[3] << 16) |
   (ndev->dev_addr[4] << 8) | (ndev->dev_addr[5])),
         priv->base + GE_STATION_MAC_ADDRESS + 4);
}
