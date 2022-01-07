
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rev; } ;
struct b43_wldev {TYPE_6__* dev; TYPE_1__ phy; } ;
struct TYPE_12__ {int bus_type; TYPE_5__* sdev; TYPE_3__* bdev; } ;
struct TYPE_11__ {TYPE_4__* bus; } ;
struct TYPE_10__ {int chipco; } ;
struct TYPE_9__ {TYPE_2__* bus; } ;
struct TYPE_8__ {int drv_cc; } ;




 int B43_MACCTL_GPOUTSMSK ;
 int B43_MMIO_GPIO_CONTROL ;
 int B43_MMIO_GPIO_MASK ;
 int B43_MMIO_MACCTL ;
 int B43_NPHY_GPIO_HIOEN ;
 int B43_NPHY_GPIO_LOOEN ;
 int B43_NPHY_RFCTL_LUT_TRSW_LO1 ;
 int B43_NPHY_RFCTL_LUT_TRSW_LO2 ;
 int B43_NPHY_RFCTL_LUT_TRSW_UP1 ;
 int B43_NPHY_RFCTL_LUT_TRSW_UP2 ;
 int B43_NTAB16 (int,int) ;
 int b43_maskset16 (struct b43_wldev*,int ,int,int) ;
 int b43_maskset32 (struct b43_wldev*,int ,int ,int ) ;
 int b43_ntab_write (struct b43_wldev*,int ,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;
 int bcma_chipco_gpio_control (int *,int,int) ;
 int ssb_chipco_gpio_control (int *,int,int) ;

__attribute__((used)) static void b43_nphy_superswitch_init(struct b43_wldev *dev, bool init)
{
 if (dev->phy.rev >= 7)
  return;

 if (dev->phy.rev >= 3) {
  if (!init)
   return;
  if (0 ) {
   b43_ntab_write(dev, B43_NTAB16(9, 2), 0x211);
   b43_ntab_write(dev, B43_NTAB16(9, 3), 0x222);
   b43_ntab_write(dev, B43_NTAB16(9, 8), 0x144);
   b43_ntab_write(dev, B43_NTAB16(9, 12), 0x188);
  }
 } else {
  b43_phy_write(dev, B43_NPHY_GPIO_LOOEN, 0);
  b43_phy_write(dev, B43_NPHY_GPIO_HIOEN, 0);

  switch (dev->dev->bus_type) {
  }

  b43_maskset32(dev, B43_MMIO_MACCTL, ~B43_MACCTL_GPOUTSMSK, 0);
  b43_maskset16(dev, B43_MMIO_GPIO_MASK, ~0, 0xFC00);
  b43_maskset16(dev, B43_MMIO_GPIO_CONTROL, (~0xFC00 & 0xFFFF),
         0);

  if (init) {
   b43_phy_write(dev, B43_NPHY_RFCTL_LUT_TRSW_LO1, 0x2D8);
   b43_phy_write(dev, B43_NPHY_RFCTL_LUT_TRSW_UP1, 0x301);
   b43_phy_write(dev, B43_NPHY_RFCTL_LUT_TRSW_LO2, 0x2D8);
   b43_phy_write(dev, B43_NPHY_RFCTL_LUT_TRSW_UP2, 0x301);
  }
 }
}
