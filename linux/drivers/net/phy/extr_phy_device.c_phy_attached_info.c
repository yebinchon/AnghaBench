
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int phy_attached_print (struct phy_device*,int *) ;

void phy_attached_info(struct phy_device *phydev)
{
 phy_attached_print(phydev, ((void*)0));
}
