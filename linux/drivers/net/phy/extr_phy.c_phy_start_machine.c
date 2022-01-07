
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int phy_trigger_machine (struct phy_device*) ;

void phy_start_machine(struct phy_device *phydev)
{
 phy_trigger_machine(phydev);
}
