
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int lan88xx_TR_reg_set (struct phy_device*,int,int) ;
 int phydev_warn (struct phy_device*,char*) ;

__attribute__((used)) static void lan88xx_config_TR_regs(struct phy_device *phydev)
{
 int err;





 err = lan88xx_TR_reg_set(phydev, 0x0F82, 0x12B00A);
 if (err < 0)
  phydev_warn(phydev, "Failed to Set Register[0x0F82]\n");





 err = lan88xx_TR_reg_set(phydev, 0x168C, 0xD2C46F);
 if (err < 0)
  phydev_warn(phydev, "Failed to Set Register[0x168C]\n");





 err = lan88xx_TR_reg_set(phydev, 0x17A2, 0x620);
 if (err < 0)
  phydev_warn(phydev, "Failed to Set Register[0x17A2]\n");






 err = lan88xx_TR_reg_set(phydev, 0x16A0, 0xEEFFDD);
 if (err < 0)
  phydev_warn(phydev, "Failed to Set Register[0x16A0]\n");





 err = lan88xx_TR_reg_set(phydev, 0x16A6, 0x071448);
 if (err < 0)
  phydev_warn(phydev, "Failed to Set Register[0x16A6]\n");





 err = lan88xx_TR_reg_set(phydev, 0x16A4, 0x13132F);
 if (err < 0)
  phydev_warn(phydev, "Failed to Set Register[0x16A4]\n");





 err = lan88xx_TR_reg_set(phydev, 0x16A8, 0x0);
 if (err < 0)
  phydev_warn(phydev, "Failed to Set Register[0x16A8]\n");






 err = lan88xx_TR_reg_set(phydev, 0x0FE8, 0x91B06C);
 if (err < 0)
  phydev_warn(phydev, "Failed to Set Register[0x0FE8]\n");






 err = lan88xx_TR_reg_set(phydev, 0x0FFC, 0xC0A028);
 if (err < 0)
  phydev_warn(phydev, "Failed to Set Register[0x0FFC]\n");






 err = lan88xx_TR_reg_set(phydev, 0x0FEA, 0x041600);
 if (err < 0)
  phydev_warn(phydev, "Failed to Set Register[0x0FEA]\n");




 err = lan88xx_TR_reg_set(phydev, 0x1686, 0x000004);
 if (err < 0)
  phydev_warn(phydev, "Failed to Set Register[0x1686]\n");
}
