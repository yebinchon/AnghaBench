
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct emac_board_info {int duplex; scalar_t__ speed; scalar_t__ link; int ndev; int phy_interface; int phy_node; } ;


 int ENODEV ;
 int SPEED_100 ;
 int emac_handle_link_change ;
 int netdev_err (int ,char*) ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 struct phy_device* of_phy_connect (int ,int ,int *,int ,int ) ;
 int phy_set_max_speed (struct phy_device*,int ) ;

__attribute__((used)) static int emac_mdio_probe(struct net_device *dev)
{
 struct emac_board_info *db = netdev_priv(dev);
 struct phy_device *phydev;




 phydev = of_phy_connect(db->ndev, db->phy_node,
    &emac_handle_link_change, 0,
    db->phy_interface);
 if (!phydev) {
  netdev_err(db->ndev, "could not find the PHY\n");
  return -ENODEV;
 }


 phy_set_max_speed(phydev, SPEED_100);

 db->link = 0;
 db->speed = 0;
 db->duplex = -1;

 return 0;
}
