
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct altera_tse_private {scalar_t__ phy_addr; int phy_iface; TYPE_1__* mdio; } ;
struct TYPE_2__ {int id; } ;


 scalar_t__ IS_ERR (struct phy_device*) ;
 int MII_BUS_ID_SIZE ;
 char* PHY_ID_FMT ;
 scalar_t__ POLL_PHY ;
 int altera_tse_adjust_link ;
 int netdev_dbg (struct net_device*,char*,char*) ;
 int netdev_err (struct net_device*,char*) ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;
 struct phy_device* phy_connect (struct net_device*,char*,int *,int ) ;
 int phy_connect_direct (struct net_device*,struct phy_device*,int *,int ) ;
 struct phy_device* phy_find_first (TYPE_1__*) ;
 int snprintf (char*,int,char*,int ,scalar_t__) ;

__attribute__((used)) static struct phy_device *connect_local_phy(struct net_device *dev)
{
 struct altera_tse_private *priv = netdev_priv(dev);
 struct phy_device *phydev = ((void*)0);
 char phy_id_fmt[MII_BUS_ID_SIZE + 3];

 if (priv->phy_addr != POLL_PHY) {
  snprintf(phy_id_fmt, MII_BUS_ID_SIZE + 3, PHY_ID_FMT,
    priv->mdio->id, priv->phy_addr);

  netdev_dbg(dev, "trying to attach to %s\n", phy_id_fmt);

  phydev = phy_connect(dev, phy_id_fmt, &altera_tse_adjust_link,
         priv->phy_iface);
  if (IS_ERR(phydev)) {
   netdev_err(dev, "Could not attach to PHY\n");
   phydev = ((void*)0);
  }

 } else {
  int ret;
  phydev = phy_find_first(priv->mdio);
  if (phydev == ((void*)0)) {
   netdev_err(dev, "No PHY found\n");
   return phydev;
  }

  ret = phy_connect_direct(dev, phydev, &altera_tse_adjust_link,
    priv->phy_iface);
  if (ret != 0) {
   netdev_err(dev, "Could not attach to PHY\n");
   phydev = ((void*)0);
  }
 }
 return phydev;
}
