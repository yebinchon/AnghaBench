
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {scalar_t__ link; scalar_t__ duplex; } ;
struct net_device {struct phy_device* phydev; } ;
struct ethoc {scalar_t__ old_link; scalar_t__ old_duplex; } ;


 scalar_t__ DUPLEX_FULL ;
 int MODER ;
 int MODER_FULLD ;
 int ethoc_read (struct ethoc*,int ) ;
 int ethoc_write (struct ethoc*,int ,int ) ;
 struct ethoc* netdev_priv (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;

__attribute__((used)) static void ethoc_mdio_poll(struct net_device *dev)
{
 struct ethoc *priv = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;
 bool changed = 0;
 u32 mode;

 if (priv->old_link != phydev->link) {
  changed = 1;
  priv->old_link = phydev->link;
 }

 if (priv->old_duplex != phydev->duplex) {
  changed = 1;
  priv->old_duplex = phydev->duplex;
 }

 if (!changed)
  return;

 mode = ethoc_read(priv, MODER);
 if (phydev->duplex == DUPLEX_FULL)
  mode |= MODER_FULLD;
 else
  mode &= ~MODER_FULLD;
 ethoc_write(priv, MODER, mode);

 phy_print_status(phydev);
}
