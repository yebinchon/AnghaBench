
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phy {int dummy; } ;


 int MII_BCM5201_INTERRUPT ;
 int MII_BCM5201_MULTIPHY ;
 int MII_BCM5201_MULTIPHY_SUPERISOLATE ;
 int sungem_phy_write (struct mii_phy*,int ,int ) ;

__attribute__((used)) static int bcm5201_suspend(struct mii_phy* phy)
{
 sungem_phy_write(phy, MII_BCM5201_INTERRUPT, 0);
 sungem_phy_write(phy, MII_BCM5201_MULTIPHY, MII_BCM5201_MULTIPHY_SUPERISOLATE);

 return 0;
}
