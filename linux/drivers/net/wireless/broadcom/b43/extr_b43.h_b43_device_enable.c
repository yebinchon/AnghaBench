
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int (* device_enable ) (TYPE_1__*,int ) ;} ;


 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static inline void b43_device_enable(struct b43_wldev *wldev,
         u32 core_specific_flags)
{
 wldev->dev->device_enable(wldev->dev, core_specific_flags);
}
