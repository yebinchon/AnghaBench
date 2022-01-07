
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int writes_counter; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int B43_MMIO_PHY_CONTROL ;
 int B43_MMIO_PHY_DATA ;
 int b43_maskset16 (struct b43_wldev*,int ,int ,int ) ;
 int b43_write16f (struct b43_wldev*,int ,int ) ;
 int check_phyreg (struct b43_wldev*,int ) ;

__attribute__((used)) static void b43_nphy_op_maskset(struct b43_wldev *dev, u16 reg, u16 mask,
     u16 set)
{
 check_phyreg(dev, reg);
 b43_write16f(dev, B43_MMIO_PHY_CONTROL, reg);
 b43_maskset16(dev, B43_MMIO_PHY_DATA, mask, set);
 dev->phy.writes_counter = 1;
}
