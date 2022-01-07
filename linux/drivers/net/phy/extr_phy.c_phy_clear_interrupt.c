
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {TYPE_1__* drv; } ;
struct TYPE_2__ {int (* ack_interrupt ) (struct phy_device*) ;} ;


 int stub1 (struct phy_device*) ;

__attribute__((used)) static int phy_clear_interrupt(struct phy_device *phydev)
{
 if (phydev->drv->ack_interrupt)
  return phydev->drv->ack_interrupt(phydev);

 return 0;
}
