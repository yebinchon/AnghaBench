
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_ECTRL ;
 int MII_ECTRL_CONFIG_EN ;
 int phy_set_bits (struct phy_device*,int ,int ) ;

__attribute__((used)) static int tja11xx_enable_reg_write(struct phy_device *phydev)
{
 return phy_set_bits(phydev, MII_ECTRL, MII_ECTRL_CONFIG_EN);
}
