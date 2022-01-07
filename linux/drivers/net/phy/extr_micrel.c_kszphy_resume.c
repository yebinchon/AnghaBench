
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {TYPE_1__* drv; int interrupts; } ;
struct TYPE_2__ {int (* config_intr ) (struct phy_device*) ;} ;


 int PHY_INTERRUPT_ENABLED ;
 int genphy_resume (struct phy_device*) ;
 int kszphy_config_reset (struct phy_device*) ;
 scalar_t__ phy_interrupt_is_valid (struct phy_device*) ;
 int stub1 (struct phy_device*) ;

__attribute__((used)) static int kszphy_resume(struct phy_device *phydev)
{
 int ret;

 genphy_resume(phydev);

 ret = kszphy_config_reset(phydev);
 if (ret)
  return ret;


 if (phy_interrupt_is_valid(phydev)) {
  phydev->interrupts = PHY_INTERRUPT_ENABLED;
  if (phydev->drv->config_intr)
   phydev->drv->config_intr(phydev);
 }

 return 0;
}
