
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ flush_writes; } ;


 int b43_read16 (struct b43_wldev*,int ) ;
 int b43_write16 (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static inline void b43_write16f(struct b43_wldev *dev, u16 offset, u16 value)
{
 b43_write16(dev, offset, value);




}
