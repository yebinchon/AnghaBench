
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sh_eth_private {int duplex; TYPE_4__* cd; int phy_interface; int phy_id; TYPE_3__* mii_bus; scalar_t__ speed; scalar_t__ link; } ;
struct phy_device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
typedef int phy_id ;
struct TYPE_8__ {scalar_t__ register_type; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_5__ {struct device_node* of_node; } ;


 int ENOENT ;
 struct phy_device* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int MII_BUS_ID_SIZE ;
 char* PHY_ID_FMT ;
 int PTR_ERR (struct phy_device*) ;
 scalar_t__ SH_ETH_REG_GIGABIT ;
 int SPEED_100 ;
 int netdev_err (struct net_device*,char*) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 struct phy_device* of_phy_connect (struct net_device*,struct device_node*,int ,int ,int ) ;
 int phy_attached_info (struct phy_device*) ;
 struct phy_device* phy_connect (struct net_device*,char*,int ,int ) ;
 int phy_disconnect (struct phy_device*) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int sh_eth_adjust_link ;
 int snprintf (char*,int,char*,int ,int ) ;

__attribute__((used)) static int sh_eth_phy_init(struct net_device *ndev)
{
 struct device_node *np = ndev->dev.parent->of_node;
 struct sh_eth_private *mdp = netdev_priv(ndev);
 struct phy_device *phydev;

 mdp->link = 0;
 mdp->speed = 0;
 mdp->duplex = -1;


 if (np) {
  struct device_node *pn;

  pn = of_parse_phandle(np, "phy-handle", 0);
  phydev = of_phy_connect(ndev, pn,
     sh_eth_adjust_link, 0,
     mdp->phy_interface);

  of_node_put(pn);
  if (!phydev)
   phydev = ERR_PTR(-ENOENT);
 } else {
  char phy_id[MII_BUS_ID_SIZE + 3];

  snprintf(phy_id, sizeof(phy_id), PHY_ID_FMT,
    mdp->mii_bus->id, mdp->phy_id);

  phydev = phy_connect(ndev, phy_id, sh_eth_adjust_link,
         mdp->phy_interface);
 }

 if (IS_ERR(phydev)) {
  netdev_err(ndev, "failed to connect PHY\n");
  return PTR_ERR(phydev);
 }


 if (mdp->cd->register_type != SH_ETH_REG_GIGABIT) {
  int err = phy_set_max_speed(phydev, SPEED_100);
  if (err) {
   netdev_err(ndev, "failed to limit PHY to 100 Mbit/s\n");
   phy_disconnect(phydev);
   return err;
  }
 }

 phy_attached_info(phydev);

 return 0;
}
