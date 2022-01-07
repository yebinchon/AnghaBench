
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int bcm54xx_config_clock_delay (struct phy_device*) ;
 int genphy_config_aneg (struct phy_device*) ;

__attribute__((used)) static int bcm54616s_config_aneg(struct phy_device *phydev)
{
 int ret;


 ret = genphy_config_aneg(phydev);


 bcm54xx_config_clock_delay(phydev);

 return ret;
}
