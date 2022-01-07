
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;
typedef int s16 ;


 int B43_PHY_NRSSILT_CTRL ;
 int B43_PHY_NRSSILT_DATA ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static s16 b43_nrssi_hw_read(struct b43_wldev *dev, u16 offset)
{
 u16 val;

 b43_phy_write(dev, B43_PHY_NRSSILT_CTRL, offset);
 val = b43_phy_read(dev, B43_PHY_NRSSILT_DATA);

 return (s16) val;
}
