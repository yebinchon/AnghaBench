
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; int hardware_power_control; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int (* supports_hwpctl ) (struct b43_wldev*) ;} ;


 int stub1 (struct b43_wldev*) ;

bool b43_has_hardware_pctl(struct b43_wldev *dev)
{
 if (!dev->phy.hardware_power_control)
  return 0;
 if (!dev->phy.ops->supports_hwpctl)
  return 0;
 return dev->phy.ops->supports_hwpctl(dev);
}
