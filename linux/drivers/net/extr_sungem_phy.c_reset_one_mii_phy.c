
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_phy {int dummy; } ;


 int BMCR_ISOLATE ;
 int BMCR_PDOWN ;
 int BMCR_RESET ;
 int MII_BMCR ;
 int __sungem_phy_read (struct mii_phy*,int,int ) ;
 int __sungem_phy_write (struct mii_phy*,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int reset_one_mii_phy(struct mii_phy* phy, int phy_id)
{
 u16 val;
 int limit = 10000;

 val = __sungem_phy_read(phy, phy_id, MII_BMCR);
 val &= ~(BMCR_ISOLATE | BMCR_PDOWN);
 val |= BMCR_RESET;
 __sungem_phy_write(phy, phy_id, MII_BMCR, val);

 udelay(100);

 while (--limit) {
  val = __sungem_phy_read(phy, phy_id, MII_BMCR);
  if ((val & BMCR_RESET) == 0)
   break;
  udelay(10);
 }
 if ((val & BMCR_ISOLATE) && limit > 0)
  __sungem_phy_write(phy, phy_id, MII_BMCR, val & ~BMCR_ISOLATE);

 return limit <= 0;
}
