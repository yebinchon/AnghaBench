
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int phy_id; } ;
struct jme_adapter {TYPE_1__ mii_if; int dev; } ;


 int BMSR_ANCOMP ;
 int MII_BMSR ;
 int PHY_LINK_AUTONEG_COMPLETE ;
 int jme_mdio_read (int ,int ,int) ;

__attribute__((used)) static u32
jme_linkstat_from_phy(struct jme_adapter *jme)
{
 u32 phylink, bmsr;

 phylink = jme_mdio_read(jme->dev, jme->mii_if.phy_id, 17);
 bmsr = jme_mdio_read(jme->dev, jme->mii_if.phy_id, MII_BMSR);
 if (bmsr & BMSR_ANCOMP)
  phylink |= PHY_LINK_AUTONEG_COMPLETE;

 return phylink;
}
