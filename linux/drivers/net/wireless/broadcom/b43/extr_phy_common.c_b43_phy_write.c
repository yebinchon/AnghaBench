
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ writes_counter; TYPE_1__* ops; } ;
struct b43_wldev {TYPE_2__ phy; int dev; } ;
struct TYPE_3__ {void (* phy_write ) (struct b43_wldev*,int ,int ) ;} ;


 scalar_t__ B43_MAX_WRITES_IN_ROW ;
 int B43_MMIO_PHY_CONTROL ;
 int B43_MMIO_PHY_DATA ;
 int B43_MMIO_PHY_VER ;
 int assert_mac_suspended (struct b43_wldev*) ;
 scalar_t__ b43_bus_host_is_pci (int ) ;
 int b43_read16 (struct b43_wldev*,int ) ;
 int b43_write16 (struct b43_wldev*,int ,int ) ;
 int b43_write16f (struct b43_wldev*,int ,int ) ;
 void stub1 (struct b43_wldev*,int ,int ) ;

void b43_phy_write(struct b43_wldev *dev, u16 reg, u16 value)
{
 assert_mac_suspended(dev);
 if (b43_bus_host_is_pci(dev->dev) &&
     ++dev->phy.writes_counter > B43_MAX_WRITES_IN_ROW) {
  b43_read16(dev, B43_MMIO_PHY_VER);
  dev->phy.writes_counter = 1;
 }

 if (dev->phy.ops->phy_write)
  return dev->phy.ops->phy_write(dev, reg, value);

 b43_write16f(dev, B43_MMIO_PHY_CONTROL, reg);
 b43_write16(dev, B43_MMIO_PHY_DATA, value);
}
