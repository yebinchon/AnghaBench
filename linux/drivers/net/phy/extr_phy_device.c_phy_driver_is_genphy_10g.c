
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct TYPE_3__ {int driver; } ;
struct TYPE_4__ {TYPE_1__ mdiodrv; } ;


 TYPE_2__ genphy_c45_driver ;
 int phy_driver_is_genphy_kind (struct phy_device*,int *) ;

bool phy_driver_is_genphy_10g(struct phy_device *phydev)
{
 return phy_driver_is_genphy_kind(phydev,
      &genphy_c45_driver.mdiodrv.driver);
}
