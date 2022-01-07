
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int (* read32 ) (TYPE_1__*,int ) ;} ;


 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static inline u32 b43_read32(struct b43_wldev *dev, u16 offset)
{
 return dev->dev->read32(dev->dev, offset);
}
