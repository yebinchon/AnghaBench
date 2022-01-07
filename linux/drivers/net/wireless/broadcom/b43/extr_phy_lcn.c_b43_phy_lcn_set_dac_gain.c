
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int b43_phy_maskset (struct b43_wldev*,int,int,int) ;
 int b43_phy_read (struct b43_wldev*,int) ;

__attribute__((used)) static void b43_phy_lcn_set_dac_gain(struct b43_wldev *dev, u16 dac_gain)
{
 u16 dac_ctrl;

 dac_ctrl = b43_phy_read(dev, 0x439);
 dac_ctrl = dac_ctrl & 0xc7f;
 dac_ctrl = dac_ctrl | (dac_gain << 7);
 b43_phy_maskset(dev, 0x439, ~0xfff, dac_ctrl);
}
