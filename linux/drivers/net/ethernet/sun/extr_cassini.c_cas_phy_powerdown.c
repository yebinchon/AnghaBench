
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cas {int dummy; } ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 int cas_phy_read (struct cas*,int ) ;
 int cas_phy_write (struct cas*,int ,int) ;

__attribute__((used)) static void cas_phy_powerdown(struct cas *cp)
{
 u16 ctl = cas_phy_read(cp, MII_BMCR);

 if (ctl & BMCR_PDOWN)
  return;
 ctl |= BMCR_PDOWN;
 cas_phy_write(cp, MII_BMCR, ctl);
}
