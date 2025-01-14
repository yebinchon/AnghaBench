
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43_wldev {int wl; } ;
typedef enum n_intc_override { ____Placeholder_n_intc_override } n_intc_override ;


 int B43_NPHY_RFCTL_INTC1 ;
 int B43_NPHY_RFCTL_INTC2 ;
 int B43_RFSEQ_RESET2RX ;
 int NL80211_BAND_5GHZ ;





 int b43_current_band (int ) ;
 int b43_nphy_force_rf_sequence (struct b43_wldev*,int ) ;
 int b43_phy_mask (struct b43_wldev*,int,int) ;
 int b43_phy_maskset (struct b43_wldev*,int,int,int) ;
 int b43_phy_set (struct b43_wldev*,int,int) ;
 int b43_phy_write (struct b43_wldev*,int,int ) ;

__attribute__((used)) static void b43_nphy_rf_ctl_intc_override_rev7(struct b43_wldev *dev,
            enum n_intc_override intc_override,
            u16 value, u8 core_sel)
{
 u16 reg, tmp, tmp2, val;
 int core;



 for (core = 0; core < 2; core++) {
  if ((core_sel == 1 && core != 0) ||
      (core_sel == 2 && core != 1))
   continue;

  reg = (core == 0) ? B43_NPHY_RFCTL_INTC1 : B43_NPHY_RFCTL_INTC2;

  switch (intc_override) {
  case 130:
   b43_phy_write(dev, reg, 0);
   b43_phy_mask(dev, 0x2ff, ~0x2000);
   b43_nphy_force_rf_sequence(dev, B43_RFSEQ_RESET2RX);
   break;
  case 128:
   b43_phy_maskset(dev, reg, ~0xC0, value << 6);
   b43_phy_set(dev, reg, 0x400);

   b43_phy_mask(dev, 0x2ff, ~0xC000 & 0xFFFF);
   b43_phy_set(dev, 0x2ff, 0x2000);
   b43_phy_set(dev, 0x2ff, 0x0001);
   break;
  case 129:
   tmp = 0x0030;
   if (b43_current_band(dev->wl) == NL80211_BAND_5GHZ)
    val = value << 5;
   else
    val = value << 4;
   b43_phy_maskset(dev, reg, ~tmp, val);
   b43_phy_set(dev, reg, 0x1000);
   break;
  case 131:
   if (b43_current_band(dev->wl) == NL80211_BAND_5GHZ) {
    tmp = 0x0001;
    tmp2 = 0x0004;
    val = value;
   } else {
    tmp = 0x0004;
    tmp2 = 0x0001;
    val = value << 2;
   }
   b43_phy_maskset(dev, reg, ~tmp, val);
   b43_phy_mask(dev, reg, ~tmp2);
   break;
  case 132:
   if (b43_current_band(dev->wl) == NL80211_BAND_5GHZ) {
    tmp = 0x0002;
    tmp2 = 0x0008;
    val = value << 1;
   } else {
    tmp = 0x0008;
    tmp2 = 0x0002;
    val = value << 3;
   }
   b43_phy_maskset(dev, reg, ~tmp, val);
   b43_phy_mask(dev, reg, ~tmp2);
   break;
  }
 }
}
