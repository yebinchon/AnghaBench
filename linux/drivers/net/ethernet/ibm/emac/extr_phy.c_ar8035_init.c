
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phy {int dummy; } ;


 int phy_write (struct mii_phy*,int,int) ;

__attribute__((used)) static int ar8035_init(struct mii_phy *phy)
{
 phy_write(phy, 0x1d, 0x5);
 phy_write(phy, 0x1e, 0x2d47);
 phy_write(phy, 0x1d, 0xb);
 phy_write(phy, 0x1e, 0xbc20);

 return 0;
}
