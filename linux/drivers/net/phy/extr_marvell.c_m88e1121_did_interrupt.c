
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_M1011_IEVENT ;
 int MII_M1011_IMASK_INIT ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int m88e1121_did_interrupt(struct phy_device *phydev)
{
 int imask;

 imask = phy_read(phydev, MII_M1011_IEVENT);

 if (imask & MII_M1011_IMASK_INIT)
  return 1;

 return 0;
}
