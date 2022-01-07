
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int genphy_resume (struct phy_device*) ;
 int rockchip_integrated_phy_config_init (struct phy_device*) ;

__attribute__((used)) static int rockchip_phy_resume(struct phy_device *phydev)
{
 genphy_resume(phydev);

 return rockchip_integrated_phy_config_init(phydev);
}
