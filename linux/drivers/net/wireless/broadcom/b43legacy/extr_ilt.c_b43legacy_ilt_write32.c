
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43legacy_wldev {int dummy; } ;


 int B43legacy_PHY_ILT_G_CTRL ;
 int B43legacy_PHY_ILT_G_DATA1 ;
 int B43legacy_PHY_ILT_G_DATA2 ;
 int b43legacy_phy_write (struct b43legacy_wldev*,int ,int) ;

void b43legacy_ilt_write32(struct b43legacy_wldev *dev, u16 offset, u32 val)
{
 b43legacy_phy_write(dev, B43legacy_PHY_ILT_G_CTRL, offset);
 b43legacy_phy_write(dev, B43legacy_PHY_ILT_G_DATA2,
       (val & 0xFFFF0000) >> 16);
 b43legacy_phy_write(dev, B43legacy_PHY_ILT_G_DATA1,
       val & 0x0000FFFF);
}
