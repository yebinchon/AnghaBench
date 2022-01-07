
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_phy {int radio_on; TYPE_1__* ops; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct TYPE_2__ {int (* software_rfkill ) (struct b43_wldev*,int) ;} ;


 int b43_mac_enable (struct b43_wldev*) ;
 int b43_mac_suspend (struct b43_wldev*) ;
 int stub1 (struct b43_wldev*,int) ;

void b43_software_rfkill(struct b43_wldev *dev, bool blocked)
{
 struct b43_phy *phy = &dev->phy;

 b43_mac_suspend(dev);
 phy->ops->software_rfkill(dev, blocked);
 phy->radio_on = !blocked;
 b43_mac_enable(dev);
}
