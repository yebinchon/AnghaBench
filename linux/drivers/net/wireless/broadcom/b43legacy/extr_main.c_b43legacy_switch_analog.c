
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int dummy; } ;


 int B43legacy_MMIO_PHY0 ;
 int b43legacy_write16 (struct b43legacy_wldev*,int ,int) ;

__attribute__((used)) static void b43legacy_switch_analog(struct b43legacy_wldev *dev, int on)
{
 b43legacy_write16(dev, B43legacy_MMIO_PHY0, on ? 0 : 0xF4);
}
