
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_wldev {int dummy; } ;
typedef scalar_t__ s16 ;


 int B43legacy_PHY_NRSSILT_CTRL ;
 int B43legacy_PHY_NRSSILT_DATA ;
 int b43legacy_phy_write (struct b43legacy_wldev*,int ,int ) ;

void b43legacy_nrssi_hw_write(struct b43legacy_wldev *dev, u16 offset, s16 val)
{
 b43legacy_phy_write(dev, B43legacy_PHY_NRSSILT_CTRL, offset);
 b43legacy_phy_write(dev, B43legacy_PHY_NRSSILT_DATA, (u16)val);
}
