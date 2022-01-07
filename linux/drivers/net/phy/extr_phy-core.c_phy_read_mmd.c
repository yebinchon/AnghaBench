
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct TYPE_3__ {int mdio_lock; } ;


 int __phy_read_mmd (struct phy_device*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int phy_read_mmd(struct phy_device *phydev, int devad, u32 regnum)
{
 int ret;

 mutex_lock(&phydev->mdio.bus->mdio_lock);
 ret = __phy_read_mmd(phydev, devad, regnum);
 mutex_unlock(&phydev->mdio.bus->mdio_lock);

 return ret;
}
