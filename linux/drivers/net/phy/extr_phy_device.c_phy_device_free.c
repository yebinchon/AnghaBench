
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct phy_device {TYPE_1__ mdio; } ;


 int put_device (int *) ;

void phy_device_free(struct phy_device *phydev)
{
 put_device(&phydev->mdio.dev);
}
