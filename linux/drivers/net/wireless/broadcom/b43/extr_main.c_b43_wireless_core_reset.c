
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct b43_wldev {TYPE_3__ phy; TYPE_1__* dev; } ;
struct TYPE_5__ {int (* switch_analog ) (struct b43_wldev*,int) ;} ;
struct TYPE_4__ {int bus_type; } ;




 int B43_MACCTL_GMODE ;
 int B43_MACCTL_IHR_ENABLED ;
 int B43_MMIO_MACCTL ;
 int b43_bcma_wireless_core_reset (struct b43_wldev*,int) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_ssb_wireless_core_reset (struct b43_wldev*,int) ;
 int b43_write32 (struct b43_wldev*,int ,int ) ;
 int stub1 (struct b43_wldev*,int) ;

void b43_wireless_core_reset(struct b43_wldev *dev, bool gmode)
{
 u32 macctl;

 switch (dev->dev->bus_type) {
 }





 if (dev->phy.ops)
  dev->phy.ops->switch_analog(dev, 1);

 macctl = b43_read32(dev, B43_MMIO_MACCTL);
 macctl &= ~B43_MACCTL_GMODE;
 if (gmode)
  macctl |= B43_MACCTL_GMODE;
 macctl |= B43_MACCTL_IHR_ENABLED;
 b43_write32(dev, B43_MMIO_MACCTL, macctl);
}
