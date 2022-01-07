
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int (* phy_maskset ) (struct b43_wldev*,int,int,int ) ;} ;


 int assert_mac_suspended (struct b43_wldev*) ;
 int b43_phy_read (struct b43_wldev*,int) ;
 int b43_phy_write (struct b43_wldev*,int,int) ;
 int stub1 (struct b43_wldev*,int,int,int ) ;

void b43_phy_mask(struct b43_wldev *dev, u16 offset, u16 mask)
{
 if (dev->phy.ops->phy_maskset) {
  assert_mac_suspended(dev);
  dev->phy.ops->phy_maskset(dev, offset, mask, 0);
 } else {
  b43_phy_write(dev, offset,
         b43_phy_read(dev, offset) & mask);
 }
}
