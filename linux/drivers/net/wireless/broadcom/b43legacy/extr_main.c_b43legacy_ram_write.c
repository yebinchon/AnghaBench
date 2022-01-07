
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43legacy_wldev {int dummy; } ;


 int B43legacy_MACCTL_BE ;
 int B43legacy_MMIO_MACCTL ;
 int B43legacy_MMIO_RAM_CONTROL ;
 int B43legacy_MMIO_RAM_DATA ;
 int B43legacy_WARN_ON (int) ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int) ;
 int swab32 (int) ;

__attribute__((used)) static void b43legacy_ram_write(struct b43legacy_wldev *dev, u16 offset,
    u32 val)
{
 u32 status;

 B43legacy_WARN_ON(offset % 4 != 0);

 status = b43legacy_read32(dev, B43legacy_MMIO_MACCTL);
 if (status & B43legacy_MACCTL_BE)
  val = swab32(val);

 b43legacy_write32(dev, B43legacy_MMIO_RAM_CONTROL, offset);
 b43legacy_write32(dev, B43legacy_MMIO_RAM_DATA, val);
}
