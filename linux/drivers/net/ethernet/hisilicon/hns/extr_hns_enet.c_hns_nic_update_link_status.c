
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {scalar_t__ phy_if; scalar_t__ phy_dev; } ;


 scalar_t__ PHY_INTERFACE_MODE_XGMII ;
 int genphy_read_status (scalar_t__) ;
 int hns_nic_adjust_link (struct net_device*) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void hns_nic_update_link_status(struct net_device *netdev)
{
 struct hns_nic_priv *priv = netdev_priv(netdev);

 struct hnae_handle *h = priv->ae_handle;

 if (h->phy_dev) {
  if (h->phy_if != PHY_INTERFACE_MODE_XGMII)
   return;

  (void)genphy_read_status(h->phy_dev);
 }
 hns_nic_adjust_link(netdev);
}
