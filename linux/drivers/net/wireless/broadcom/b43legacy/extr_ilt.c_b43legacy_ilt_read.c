
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_wldev {int dummy; } ;


 int B43legacy_PHY_ILT_G_CTRL ;
 int B43legacy_PHY_ILT_G_DATA1 ;
 int b43legacy_phy_read (struct b43legacy_wldev*,int ) ;
 int b43legacy_phy_write (struct b43legacy_wldev*,int ,int ) ;

u16 b43legacy_ilt_read(struct b43legacy_wldev *dev, u16 offset)
{
 b43legacy_phy_write(dev, B43legacy_PHY_ILT_G_CTRL, offset);
 return b43legacy_phy_read(dev, B43legacy_PHY_ILT_G_DATA1);
}
