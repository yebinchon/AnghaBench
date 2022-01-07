
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int phy_id; } ;
struct usbnet {TYPE_1__ mii; int net; struct asix_common_private* driver_priv; } ;
struct asix_common_private {void* presvd_phy_advertise; void* presvd_phy_bmcr; } ;


 int AX_MEDIUM_RE ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 void* asix_mdio_read_nopm (int ,int ,int ) ;
 int asix_read_medium_status (struct usbnet*,int) ;
 int asix_write_medium_mode (struct usbnet*,int ,int) ;
 int netdev_dbg (int ,char*,int ) ;

__attribute__((used)) static void ax88772_suspend(struct usbnet *dev)
{
 struct asix_common_private *priv = dev->driver_priv;
 u16 medium;


 medium = asix_read_medium_status(dev, 1);
 medium &= ~AX_MEDIUM_RE;
 asix_write_medium_mode(dev, medium, 1);

 netdev_dbg(dev->net, "ax88772_suspend: medium=0x%04x\n",
     asix_read_medium_status(dev, 1));


 priv->presvd_phy_bmcr =
  asix_mdio_read_nopm(dev->net, dev->mii.phy_id, MII_BMCR);


 priv->presvd_phy_advertise =
  asix_mdio_read_nopm(dev->net, dev->mii.phy_id, MII_ADVERTISE);
}
