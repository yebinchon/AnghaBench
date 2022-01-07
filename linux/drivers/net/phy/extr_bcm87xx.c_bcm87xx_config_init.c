
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int bcm87xx_of_reg_init (struct phy_device*) ;

__attribute__((used)) static int bcm87xx_config_init(struct phy_device *phydev)
{
 return bcm87xx_of_reg_init(phydev);
}
