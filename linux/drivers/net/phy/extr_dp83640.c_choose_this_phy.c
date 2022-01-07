
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct dp83640_clock {int chosen; } ;


 int chosen_phy ;

__attribute__((used)) static int choose_this_phy(struct dp83640_clock *clock,
      struct phy_device *phydev)
{
 if (chosen_phy == -1 && !clock->chosen)
  return 1;

 if (chosen_phy == phydev->mdio.addr)
  return 1;

 return 0;
}
