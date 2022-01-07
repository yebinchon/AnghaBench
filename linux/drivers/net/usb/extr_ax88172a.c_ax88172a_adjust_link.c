
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {struct ax88172a_private* driver_priv; } ;
struct phy_device {scalar_t__ duplex; scalar_t__ speed; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;
struct ax88172a_private {int oldmode; } ;


 int AX88772_MEDIUM_DEFAULT ;
 int AX_MEDIUM_FD ;
 int AX_MEDIUM_PS ;
 scalar_t__ DUPLEX_HALF ;
 scalar_t__ SPEED_100 ;
 int asix_write_medium_mode (struct usbnet*,int ,int ) ;
 int netdev_dbg (struct net_device*,char*,scalar_t__,scalar_t__,int ) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;

__attribute__((used)) static void ax88172a_adjust_link(struct net_device *netdev)
{
 struct phy_device *phydev = netdev->phydev;
 struct usbnet *dev = netdev_priv(netdev);
 struct ax88172a_private *priv = dev->driver_priv;
 u16 mode = 0;

 if (phydev->link) {
  mode = AX88772_MEDIUM_DEFAULT;

  if (phydev->duplex == DUPLEX_HALF)
   mode &= ~AX_MEDIUM_FD;

  if (phydev->speed != SPEED_100)
   mode &= ~AX_MEDIUM_PS;
 }

 if (mode != priv->oldmode) {
  asix_write_medium_mode(dev, mode, 0);
  priv->oldmode = mode;
  netdev_dbg(netdev, "speed %u duplex %d, setting mode to 0x%04x\n",
      phydev->speed, phydev->duplex, mode);
  phy_print_status(phydev);
 }
}
