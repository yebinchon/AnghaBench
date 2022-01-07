
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int interrupts; TYPE_1__* drv; } ;
struct TYPE_2__ {int (* config_intr ) (struct phy_device*) ;} ;


 int stub1 (struct phy_device*) ;

__attribute__((used)) static int phy_config_interrupt(struct phy_device *phydev, bool interrupts)
{
 phydev->interrupts = interrupts ? 1 : 0;
 if (phydev->drv->config_intr)
  return phydev->drv->config_intr(phydev);

 return 0;
}
