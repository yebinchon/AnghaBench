
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int b43_read16 (struct b43_wldev*,int) ;
 int b43_write16 (struct b43_wldev*,int,int) ;

__attribute__((used)) static inline void b43_maskset16(struct b43_wldev *dev, u16 offset, u16 mask,
     u16 set)
{
 b43_write16(dev, offset, (b43_read16(dev, offset) & mask) | set);
}
