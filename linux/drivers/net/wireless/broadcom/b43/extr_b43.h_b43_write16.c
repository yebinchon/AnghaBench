
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int (* write16 ) (TYPE_1__*,int ,int ) ;} ;


 int stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline void b43_write16(struct b43_wldev *dev, u16 offset, u16 value)
{
 dev->dev->write16(dev->dev, offset, value);
}
