
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mii_phy_def {int phy_id_mask; int phy_id; int features; } ;
struct mii_phy {int address; int features; int advertising; struct mii_phy_def* def; scalar_t__ asym_pause; scalar_t__ pause; int duplex; int speed; int autoneg; } ;


 int AUTONEG_DISABLE ;
 int BMSR_100FULL ;
 int BMSR_100HALF ;
 int BMSR_10FULL ;
 int BMSR_10HALF ;
 int BMSR_ANEGCAPABLE ;
 int BMSR_ESTATEN ;
 int DUPLEX_HALF ;
 int ENODEV ;
 int ESTATUS_1000_TFULL ;
 int ESTATUS_1000_THALF ;
 int MII_BMSR ;
 int MII_ESTATUS ;
 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 int SPEED_10 ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_1000baseT_Half ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_MII ;
 scalar_t__ emac_mii_reset_phy (struct mii_phy*) ;
 struct mii_phy_def** mii_phy_table ;
 int phy_read (struct mii_phy*,int ) ;

int emac_mii_phy_probe(struct mii_phy *phy, int address)
{
 struct mii_phy_def *def;
 int i;
 u32 id;

 phy->autoneg = AUTONEG_DISABLE;
 phy->advertising = 0;
 phy->address = address;
 phy->speed = SPEED_10;
 phy->duplex = DUPLEX_HALF;
 phy->pause = phy->asym_pause = 0;


 if (emac_mii_reset_phy(phy))
  return -ENODEV;


 id = (phy_read(phy, MII_PHYSID1) << 16) | phy_read(phy, MII_PHYSID2);
 for (i = 0; (def = mii_phy_table[i]) != ((void*)0); i++)
  if ((id & def->phy_id_mask) == def->phy_id)
   break;

 if (!def)
  return -ENODEV;

 phy->def = def;


 phy->features = def->features;
 if (!phy->features) {
  u16 bmsr = phy_read(phy, MII_BMSR);
  if (bmsr & BMSR_ANEGCAPABLE)
   phy->features |= SUPPORTED_Autoneg;
  if (bmsr & BMSR_10HALF)
   phy->features |= SUPPORTED_10baseT_Half;
  if (bmsr & BMSR_10FULL)
   phy->features |= SUPPORTED_10baseT_Full;
  if (bmsr & BMSR_100HALF)
   phy->features |= SUPPORTED_100baseT_Half;
  if (bmsr & BMSR_100FULL)
   phy->features |= SUPPORTED_100baseT_Full;
  if (bmsr & BMSR_ESTATEN) {
   u16 esr = phy_read(phy, MII_ESTATUS);
   if (esr & ESTATUS_1000_TFULL)
    phy->features |= SUPPORTED_1000baseT_Full;
   if (esr & ESTATUS_1000_THALF)
    phy->features |= SUPPORTED_1000baseT_Half;
  }
  phy->features |= SUPPORTED_MII;
 }


 phy->advertising = phy->features;

 return 0;
}
