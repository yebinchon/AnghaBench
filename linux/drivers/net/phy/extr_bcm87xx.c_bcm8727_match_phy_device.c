
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* device_ids; } ;
struct phy_device {TYPE_1__ c45_ids; } ;


 scalar_t__ PHY_ID_BCM8727 ;

__attribute__((used)) static int bcm8727_match_phy_device(struct phy_device *phydev)
{
 return phydev->c45_ids.device_ids[4] == PHY_ID_BCM8727;
}
