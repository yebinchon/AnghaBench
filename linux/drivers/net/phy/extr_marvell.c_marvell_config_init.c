
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int marvell_config_led (struct phy_device*) ;
 int marvell_of_reg_init (struct phy_device*) ;

__attribute__((used)) static int marvell_config_init(struct phy_device *phydev)
{

 marvell_config_led(phydev);


 return marvell_of_reg_init(phydev);
}
