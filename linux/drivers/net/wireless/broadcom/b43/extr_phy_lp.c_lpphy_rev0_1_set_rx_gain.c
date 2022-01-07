
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_LPPHY_RF_OVERRIDE_2_VAL ;
 int B43_LPPHY_RF_OVERRIDE_VAL_0 ;
 int B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void lpphy_rev0_1_set_rx_gain(struct b43_wldev *dev, u32 gain)
{
 u16 trsw = gain & 0x1;
 u16 lna = (gain & 0xFFFC) | ((gain & 0xC) >> 2);
 u16 ext_lna = (gain & 2) >> 1;

 b43_phy_maskset(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0xFFFE, trsw);
 b43_phy_maskset(dev, B43_LPPHY_RF_OVERRIDE_2_VAL,
   0xFBFF, ext_lna << 10);
 b43_phy_maskset(dev, B43_LPPHY_RF_OVERRIDE_2_VAL,
   0xF7FF, ext_lna << 11);
 b43_phy_write(dev, B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL, lna);
}
