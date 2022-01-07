
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int ADIN1300_GE_SOFT_RESET ;
 int ADIN1300_GE_SOFT_RESET_REG ;
 int MDIO_MMD_VEND1 ;
 int msleep (int) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phy_set_bits_mmd (struct phy_device*,int ,int ,int ) ;

__attribute__((used)) static int adin_soft_reset(struct phy_device *phydev)
{
 int rc;


 rc = phy_set_bits_mmd(phydev, MDIO_MMD_VEND1,
         ADIN1300_GE_SOFT_RESET_REG,
         ADIN1300_GE_SOFT_RESET);
 if (rc < 0)
  return rc;

 msleep(10);


 rc = phy_read_mmd(phydev, MDIO_MMD_VEND1,
     ADIN1300_GE_SOFT_RESET_REG);

 return rc < 0 ? rc : 0;
}
