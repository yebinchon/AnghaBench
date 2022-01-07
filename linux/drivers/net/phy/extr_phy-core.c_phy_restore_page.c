
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* bus; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct TYPE_3__ {int mdio_lock; } ;


 int __phy_write_page (struct phy_device*,int) ;
 int mutex_unlock (int *) ;

int phy_restore_page(struct phy_device *phydev, int oldpage, int ret)
{
 int r;

 if (oldpage >= 0) {
  r = __phy_write_page(phydev, oldpage);




  if (ret >= 0 && r < 0)
   ret = r;
 } else {

  ret = oldpage;
 }

 mutex_unlock(&phydev->mdio.bus->mdio_lock);

 return ret;
}
