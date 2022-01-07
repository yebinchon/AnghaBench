
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int ADIN1300_INT_MASK_EN ;
 int ADIN1300_INT_MASK_REG ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_clear_bits (struct phy_device*,int ,int ) ;
 int phy_set_bits (struct phy_device*,int ,int ) ;

__attribute__((used)) static int adin_phy_config_intr(struct phy_device *phydev)
{
 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  return phy_set_bits(phydev, ADIN1300_INT_MASK_REG,
        ADIN1300_INT_MASK_EN);

 return phy_clear_bits(phydev, ADIN1300_INT_MASK_REG,
         ADIN1300_INT_MASK_EN);
}
