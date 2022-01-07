
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {TYPE_1__* drv; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ (* handle_interrupt ) (struct phy_device*) ;int (* did_interrupt ) (struct phy_device*) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ phy_clear_interrupt (struct phy_device*) ;
 int phy_error (struct phy_device*) ;
 int phy_trigger_machine (struct phy_device*) ;
 int stub1 (struct phy_device*) ;
 scalar_t__ stub2 (struct phy_device*) ;

__attribute__((used)) static irqreturn_t phy_interrupt(int irq, void *phy_dat)
{
 struct phy_device *phydev = phy_dat;

 if (phydev->drv->did_interrupt && !phydev->drv->did_interrupt(phydev))
  return IRQ_NONE;

 if (phydev->drv->handle_interrupt) {
  if (phydev->drv->handle_interrupt(phydev))
   goto phy_err;
 } else {

  phy_trigger_machine(phydev);
 }

 if (phy_clear_interrupt(phydev))
  goto phy_err;
 return IRQ_HANDLED;

phy_err:
 phy_error(phydev);
 return IRQ_NONE;
}
