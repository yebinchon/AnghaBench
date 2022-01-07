
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_wldev {int dev; } ;


 int ssb_read16 (int ,int ) ;

__attribute__((used)) static inline
u16 b43legacy_read16(struct b43legacy_wldev *dev, u16 offset)
{
 return ssb_read16(dev->dev, offset);
}
