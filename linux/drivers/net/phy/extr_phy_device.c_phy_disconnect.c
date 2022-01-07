
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int * adjust_link; } ;


 int phy_detach (struct phy_device*) ;
 int phy_free_interrupt (struct phy_device*) ;
 scalar_t__ phy_interrupt_is_valid (struct phy_device*) ;
 scalar_t__ phy_is_started (struct phy_device*) ;
 int phy_stop (struct phy_device*) ;

void phy_disconnect(struct phy_device *phydev)
{
 if (phy_is_started(phydev))
  phy_stop(phydev);

 if (phy_interrupt_is_valid(phydev))
  phy_free_interrupt(phydev);

 phydev->adjust_link = ((void*)0);

 phy_detach(phydev);
}
