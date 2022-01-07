
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {scalar_t__ duplex; scalar_t__ speed; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;
struct hisi_femac_priv {int link_status; scalar_t__ port_base; } ;


 scalar_t__ DUPLEX_FULL ;
 scalar_t__ MAC_PORTSET ;
 int MAC_PORTSET_DUPLEX_FULL ;
 int MAC_PORTSET_LINKED ;
 int MAC_PORTSET_SPEED_100M ;
 scalar_t__ SPEED_100 ;
 struct hisi_femac_priv* netdev_priv (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void hisi_femac_adjust_link(struct net_device *dev)
{
 struct hisi_femac_priv *priv = netdev_priv(dev);
 struct phy_device *phy = dev->phydev;
 u32 status = 0;

 if (phy->link)
  status |= MAC_PORTSET_LINKED;
 if (phy->duplex == DUPLEX_FULL)
  status |= MAC_PORTSET_DUPLEX_FULL;
 if (phy->speed == SPEED_100)
  status |= MAC_PORTSET_SPEED_100M;

 if ((status != priv->link_status) &&
     ((status | priv->link_status) & MAC_PORTSET_LINKED)) {
  writel(status, priv->port_base + MAC_PORTSET);
  priv->link_status = status;
  phy_print_status(phy);
 }
}
