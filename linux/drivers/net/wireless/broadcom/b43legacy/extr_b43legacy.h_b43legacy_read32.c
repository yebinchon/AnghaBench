
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43legacy_wldev {int dev; } ;


 int ssb_read32 (int ,int ) ;

__attribute__((used)) static inline
u32 b43legacy_read32(struct b43legacy_wldev *dev, u16 offset)
{
 return ssb_read32(dev->dev, offset);
}
