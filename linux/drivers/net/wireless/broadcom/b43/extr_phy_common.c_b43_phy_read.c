
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {TYPE_1__* ops; scalar_t__ writes_counter; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int (* phy_read ) (struct b43_wldev*,int ) ;} ;


 int B43_MMIO_PHY_CONTROL ;
 int B43_MMIO_PHY_DATA ;
 int assert_mac_suspended (struct b43_wldev*) ;
 int b43_read16 (struct b43_wldev*,int ) ;
 int b43_write16f (struct b43_wldev*,int ,int ) ;
 int stub1 (struct b43_wldev*,int ) ;

u16 b43_phy_read(struct b43_wldev *dev, u16 reg)
{
 assert_mac_suspended(dev);
 dev->phy.writes_counter = 0;

 if (dev->phy.ops->phy_read)
  return dev->phy.ops->phy_read(dev, reg);

 b43_write16f(dev, B43_MMIO_PHY_CONTROL, reg);
 return b43_read16(dev, B43_MMIO_PHY_DATA);
}
