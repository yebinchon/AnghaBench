
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_PHY_OFDM (int) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;

__attribute__((used)) static void lpphy_set_pa_gain(struct b43_wldev *dev, u16 gain)
{
 b43_phy_maskset(dev, B43_PHY_OFDM(0xFB), 0xE03F, gain << 6);
 b43_phy_maskset(dev, B43_PHY_OFDM(0xFD), 0x80FF, gain << 8);
}
