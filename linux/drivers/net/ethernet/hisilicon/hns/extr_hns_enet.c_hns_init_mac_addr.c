
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct hns_nic_priv {int dev; } ;


 int ETH_ALEN ;
 int dev_warn (int ,char*,int ) ;
 int device_get_mac_address (int ,int ,int ) ;
 int eth_hw_addr_random (struct net_device*) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void hns_init_mac_addr(struct net_device *ndev)
{
 struct hns_nic_priv *priv = netdev_priv(ndev);

 if (!device_get_mac_address(priv->dev, ndev->dev_addr, ETH_ALEN)) {
  eth_hw_addr_random(ndev);
  dev_warn(priv->dev, "No valid mac, use random mac %pM",
    ndev->dev_addr);
 }
}
