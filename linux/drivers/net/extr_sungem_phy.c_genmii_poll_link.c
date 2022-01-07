
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_phy {scalar_t__ autoneg; } ;


 int BMSR_ANEGCOMPLETE ;
 int BMSR_LSTATUS ;
 int MII_BMSR ;
 int sungem_phy_read (struct mii_phy*,int ) ;

__attribute__((used)) static int genmii_poll_link(struct mii_phy *phy)
{
 u16 status;

 (void)sungem_phy_read(phy, MII_BMSR);
 status = sungem_phy_read(phy, MII_BMSR);
 if ((status & BMSR_LSTATUS) == 0)
  return 0;
 if (phy->autoneg && !(status & BMSR_ANEGCOMPLETE))
  return 0;
 return 1;
}
