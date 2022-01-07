
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED1000 ;
 int MII_BMCR ;
 int genphy_soft_reset (struct phy_device*) ;
 int phy_write (struct phy_device*,int ,int) ;
 int phy_write_paged (struct phy_device*,int,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int m88e6390_errata(struct phy_device *phydev)
{
 int err;

 err = phy_write(phydev, MII_BMCR,
   BMCR_ANENABLE | BMCR_SPEED1000 | BMCR_FULLDPLX);
 if (err)
  return err;

 usleep_range(300, 400);

 err = phy_write_paged(phydev, 0xf8, 0x08, 0x36);
 if (err)
  return err;

 return genphy_soft_reset(phydev);
}
