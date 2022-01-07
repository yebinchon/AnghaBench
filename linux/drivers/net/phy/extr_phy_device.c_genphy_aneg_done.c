
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMSR_ANEGCOMPLETE ;
 int MII_BMSR ;
 int phy_read (struct phy_device*,int ) ;

int genphy_aneg_done(struct phy_device *phydev)
{
 int retval = phy_read(phydev, MII_BMSR);

 return (retval < 0) ? retval : (retval & BMSR_ANEGCOMPLETE);
}
