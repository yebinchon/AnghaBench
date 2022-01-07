
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_wldev {int dummy; } ;


 int B43legacy_MMIO_PHY_CONTROL ;
 int B43legacy_MMIO_PHY_DATA ;
 int b43legacy_read16 (struct b43legacy_wldev*,int ) ;
 int b43legacy_write16 (struct b43legacy_wldev*,int ,int ) ;

u16 b43legacy_phy_read(struct b43legacy_wldev *dev, u16 offset)
{
 b43legacy_write16(dev, B43legacy_MMIO_PHY_CONTROL, offset);
 return b43legacy_read16(dev, B43legacy_MMIO_PHY_DATA);
}
