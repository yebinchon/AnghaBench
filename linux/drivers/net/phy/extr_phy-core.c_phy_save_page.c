
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* bus; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct TYPE_3__ {int mdio_lock; } ;


 int __phy_read_page (struct phy_device*) ;
 int mutex_lock (int *) ;

int phy_save_page(struct phy_device *phydev)
{
 mutex_lock(&phydev->mdio.bus->mdio_lock);
 return __phy_read_page(phydev);
}
