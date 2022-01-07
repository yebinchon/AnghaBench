
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {int dev; } ;
struct enetc_ndev_priv {int if_mode; int phy_node; } ;


 int ENODEV ;
 int adjust_link ;
 int dev_err (int *,char*) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;
 struct phy_device* of_phy_connect (struct net_device*,int ,int *,int ,int ) ;
 int phy_attached_info (struct phy_device*) ;

__attribute__((used)) static int enetc_phy_connect(struct net_device *ndev)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct phy_device *phydev;

 if (!priv->phy_node)
  return 0;

 phydev = of_phy_connect(ndev, priv->phy_node, &adjust_link,
    0, priv->if_mode);
 if (!phydev) {
  dev_err(&ndev->dev, "could not attach to PHY\n");
  return -ENODEV;
 }

 phy_attached_info(phydev);

 return 0;
}
