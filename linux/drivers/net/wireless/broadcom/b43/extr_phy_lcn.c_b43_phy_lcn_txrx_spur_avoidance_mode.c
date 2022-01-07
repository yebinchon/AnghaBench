
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int b43_mac_switch_freq (struct b43_wldev*,int) ;
 int b43_phy_write (struct b43_wldev*,int,int) ;

__attribute__((used)) static void b43_phy_lcn_txrx_spur_avoidance_mode(struct b43_wldev *dev,
       bool enable)
{
 if (enable) {
  b43_phy_write(dev, 0x942, 0x7);
  b43_phy_write(dev, 0x93b, ((1 << 13) + 23));
  b43_phy_write(dev, 0x93c, ((1 << 13) + 1989));

  b43_phy_write(dev, 0x44a, 0x084);
  b43_phy_write(dev, 0x44a, 0x080);
  b43_phy_write(dev, 0x6d3, 0x2222);
  b43_phy_write(dev, 0x6d3, 0x2220);
 } else {
  b43_phy_write(dev, 0x942, 0x0);
  b43_phy_write(dev, 0x93b, ((0 << 13) + 23));
  b43_phy_write(dev, 0x93c, ((0 << 13) + 1989));
 }
 b43_mac_switch_freq(dev, enable);
}
