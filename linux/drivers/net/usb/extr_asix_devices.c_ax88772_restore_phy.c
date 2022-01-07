
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_id; } ;
struct usbnet {TYPE_1__ mii; int net; struct asix_common_private* driver_priv; } ;
struct asix_common_private {int presvd_phy_advertise; int presvd_phy_bmcr; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int asix_mdio_write_nopm (int ,int ,int ,int) ;

__attribute__((used)) static void ax88772_restore_phy(struct usbnet *dev)
{
 struct asix_common_private *priv = dev->driver_priv;

 if (priv->presvd_phy_advertise) {

  asix_mdio_write_nopm(dev->net, dev->mii.phy_id, MII_ADVERTISE,
         priv->presvd_phy_advertise);


  if (priv->presvd_phy_bmcr & BMCR_ANENABLE)
   priv->presvd_phy_bmcr |= BMCR_ANRESTART;

  asix_mdio_write_nopm(dev->net, dev->mii.phy_id, MII_BMCR,
         priv->presvd_phy_bmcr);

  priv->presvd_phy_advertise = 0;
  priv->presvd_phy_bmcr = 0;
 }
}
