
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; struct ax88172a_private* driver_priv; } ;
struct ax88172a_private {scalar_t__ phydev; int phy_name; } ;


 int netdev_dbg (int ,char*) ;
 int netdev_info (int ,char*,int ) ;
 int phy_disconnect (scalar_t__) ;
 int phy_stop (scalar_t__) ;

__attribute__((used)) static int ax88172a_stop(struct usbnet *dev)
{
 struct ax88172a_private *priv = dev->driver_priv;

 netdev_dbg(dev->net, "Stopping interface\n");

 if (priv->phydev) {
  netdev_info(dev->net, "Disconnecting from phy %s\n",
       priv->phy_name);
  phy_stop(priv->phydev);
  phy_disconnect(priv->phydev);
 }

 return 0;
}
