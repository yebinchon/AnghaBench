
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43legacy_wldev {int dummy; } ;


 int B43legacy_MMIO_PS_STATUS ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_write16 (struct b43legacy_wldev*,int ,int) ;

__attribute__((used)) static void handle_irq_pmq(struct b43legacy_wldev *dev)
{
 u32 tmp;



 while (1) {
  tmp = b43legacy_read32(dev, B43legacy_MMIO_PS_STATUS);
  if (!(tmp & 0x00000008))
   break;
 }

 b43legacy_write16(dev, B43legacy_MMIO_PS_STATUS, 0x0002);
}
