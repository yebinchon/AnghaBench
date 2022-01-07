
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int (* bus_powerup ) (TYPE_1__*,int) ;} ;


 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static inline int b43_bus_powerup(struct b43_wldev *wldev, bool dynamic_pctl)
{
 return wldev->dev->bus_powerup(wldev->dev, dynamic_pctl);
}
