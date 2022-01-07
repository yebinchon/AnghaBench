
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_driver {int dummy; } ;
struct module {int dummy; } ;


 int phy_driver_register (struct phy_driver*,struct module*) ;
 int phy_driver_unregister (struct phy_driver*) ;

int phy_drivers_register(struct phy_driver *new_driver, int n,
    struct module *owner)
{
 int i, ret = 0;

 for (i = 0; i < n; i++) {
  ret = phy_driver_register(new_driver + i, owner);
  if (ret) {
   while (i-- > 0)
    phy_driver_unregister(new_driver + i);
   break;
  }
 }
 return ret;
}
