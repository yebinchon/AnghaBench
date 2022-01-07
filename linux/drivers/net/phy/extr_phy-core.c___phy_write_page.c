
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {TYPE_1__* drv; } ;
struct TYPE_2__ {int (* write_page ) (struct phy_device*,int) ;} ;


 int stub1 (struct phy_device*,int) ;

__attribute__((used)) static int __phy_write_page(struct phy_device *phydev, int page)
{
 return phydev->drv->write_page(phydev, page);
}
