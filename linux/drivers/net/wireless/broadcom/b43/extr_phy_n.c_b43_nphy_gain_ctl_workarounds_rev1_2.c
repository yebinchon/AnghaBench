
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {int wl; TYPE_1__ phy; } ;
struct b43_phy_n {scalar_t__ elna_gain_config; scalar_t__ gain_boost; } ;


 int B43_NPHY_C1_CCK_CGAINI ;
 int B43_NPHY_C1_CCK_CGAINI_GAINBKOFF ;
 int B43_NPHY_C1_CGAINI ;
 int B43_NPHY_C1_CGAINI_CL2DETECT ;
 int B43_NPHY_C1_CGAINI_GAINBKOFF ;
 int B43_NPHY_C1_CLIPWBTHRES ;
 int B43_NPHY_C1_CLIPWBTHRES_CLIP2 ;
 int B43_NPHY_C1_INITGAIN ;
 int B43_NPHY_C1_INITGAIN_HPVGA2 ;
 int B43_NPHY_C1_INITGAIN_HPVGA2_SHIFT ;
 int B43_NPHY_C1_NBCLIPTHRES ;
 int B43_NPHY_C2_CCK_CGAINI ;
 int B43_NPHY_C2_CCK_CGAINI_GAINBKOFF ;
 int B43_NPHY_C2_CGAINI ;
 int B43_NPHY_C2_CGAINI_CL2DETECT ;
 int B43_NPHY_C2_CGAINI_GAINBKOFF ;
 int B43_NPHY_C2_CLIPWBTHRES ;
 int B43_NPHY_C2_CLIPWBTHRES_CLIP2 ;
 int B43_NPHY_C2_INITGAIN ;
 int B43_NPHY_C2_INITGAIN_HPVGA2 ;
 int B43_NPHY_C2_INITGAIN_HPVGA2_SHIFT ;
 int B43_NPHY_C2_NBCLIPTHRES ;
 int B43_NPHY_CCK_SHIFTB_REF ;
 int B43_NPHY_CLIP1_NBDWELL_LEN ;
 int B43_NPHY_CLIP2_NBDWELL_LEN ;
 int B43_NPHY_OVER_DGAIN1 ;
 int B43_NPHY_OVER_DGAIN_CCKDGECV ;
 int B43_NPHY_OVER_DGAIN_CCKDGECV_SHIFT ;
 int B43_NPHY_TABLE_ADDR ;
 int B43_NPHY_TABLE_DATALO ;
 int B43_NPHY_W1CLIP1_DWELL_LEN ;
 int B43_NPHY_W1CLIP2_DWELL_LEN ;
 int B43_PHY_N (int) ;
 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ b43_current_band (int ) ;
 scalar_t__ b43_is_40mhz (struct b43_wldev*) ;
 int b43_nphy_adjust_lna_gain_table (struct b43_wldev*) ;
 int b43_nphy_set_rf_sequence (struct b43_wldev*,int,int*,int*,int) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_phy_set (struct b43_wldev*,int ,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_nphy_gain_ctl_workarounds_rev1_2(struct b43_wldev *dev)
{
 struct b43_phy_n *nphy = dev->phy.n;

 u8 i, j;
 u8 code;
 u16 tmp;
 u8 rfseq_events[3] = { 6, 8, 7 };
 u8 rfseq_delays[3] = { 10, 30, 1 };


 b43_phy_set(dev, B43_NPHY_C1_CGAINI, B43_NPHY_C1_CGAINI_CL2DETECT);
 b43_phy_set(dev, B43_NPHY_C2_CGAINI, B43_NPHY_C2_CGAINI_CL2DETECT);


 b43_phy_write(dev, B43_NPHY_C1_NBCLIPTHRES, 0x84);
 b43_phy_write(dev, B43_NPHY_C2_NBCLIPTHRES, 0x84);

 if (!b43_is_40mhz(dev)) {

  b43_phy_write(dev, B43_NPHY_CLIP1_NBDWELL_LEN, 0x002B);
  b43_phy_write(dev, B43_NPHY_CLIP2_NBDWELL_LEN, 0x002B);
  b43_phy_write(dev, B43_NPHY_W1CLIP1_DWELL_LEN, 0x0009);
  b43_phy_write(dev, B43_NPHY_W1CLIP2_DWELL_LEN, 0x0009);
 }


 b43_phy_maskset(dev, B43_NPHY_C1_CLIPWBTHRES,
   ~B43_NPHY_C1_CLIPWBTHRES_CLIP2, 21);
 b43_phy_maskset(dev, B43_NPHY_C2_CLIPWBTHRES,
   ~B43_NPHY_C2_CLIPWBTHRES_CLIP2, 21);

 if (!b43_is_40mhz(dev)) {
  b43_phy_maskset(dev, B43_NPHY_C1_CGAINI,
   ~B43_NPHY_C1_CGAINI_GAINBKOFF, 0x1);
  b43_phy_maskset(dev, B43_NPHY_C2_CGAINI,
   ~B43_NPHY_C2_CGAINI_GAINBKOFF, 0x1);
  b43_phy_maskset(dev, B43_NPHY_C1_CCK_CGAINI,
   ~B43_NPHY_C1_CCK_CGAINI_GAINBKOFF, 0x1);
  b43_phy_maskset(dev, B43_NPHY_C2_CCK_CGAINI,
   ~B43_NPHY_C2_CCK_CGAINI_GAINBKOFF, 0x1);
 }

 b43_phy_write(dev, B43_NPHY_CCK_SHIFTB_REF, 0x809C);

 if (nphy->gain_boost) {
  if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ &&
      b43_is_40mhz(dev))
   code = 4;
  else
   code = 5;
 } else {
  code = b43_is_40mhz(dev) ? 6 : 7;
 }


 b43_phy_maskset(dev, B43_NPHY_C1_INITGAIN, ~B43_NPHY_C1_INITGAIN_HPVGA2,
   code << B43_NPHY_C1_INITGAIN_HPVGA2_SHIFT);
 b43_phy_maskset(dev, B43_NPHY_C2_INITGAIN, ~B43_NPHY_C2_INITGAIN_HPVGA2,
   code << B43_NPHY_C2_INITGAIN_HPVGA2_SHIFT);

 b43_phy_write(dev, B43_NPHY_TABLE_ADDR, 0x1D06);

 for (i = 0; i < 4; i++)
  b43_phy_write(dev, B43_NPHY_TABLE_DATALO, (code << 8 | 0x7C));

 b43_nphy_adjust_lna_gain_table(dev);

 if (nphy->elna_gain_config) {
  b43_phy_write(dev, B43_NPHY_TABLE_ADDR, 0x0808);
  b43_phy_write(dev, B43_NPHY_TABLE_DATALO, 0x0);
  b43_phy_write(dev, B43_NPHY_TABLE_DATALO, 0x1);
  b43_phy_write(dev, B43_NPHY_TABLE_DATALO, 0x1);
  b43_phy_write(dev, B43_NPHY_TABLE_DATALO, 0x1);

  b43_phy_write(dev, B43_NPHY_TABLE_ADDR, 0x0C08);
  b43_phy_write(dev, B43_NPHY_TABLE_DATALO, 0x0);
  b43_phy_write(dev, B43_NPHY_TABLE_DATALO, 0x1);
  b43_phy_write(dev, B43_NPHY_TABLE_DATALO, 0x1);
  b43_phy_write(dev, B43_NPHY_TABLE_DATALO, 0x1);

  b43_phy_write(dev, B43_NPHY_TABLE_ADDR, 0x1D06);

  for (i = 0; i < 4; i++)
   b43_phy_write(dev, B43_NPHY_TABLE_DATALO,
      (code << 8 | 0x74));
 }

 if (dev->phy.rev == 2) {
  for (i = 0; i < 4; i++) {
   b43_phy_write(dev, B43_NPHY_TABLE_ADDR,
     (0x0400 * i) + 0x0020);
   for (j = 0; j < 21; j++) {
    tmp = j * (i < 2 ? 3 : 1);
    b43_phy_write(dev,
     B43_NPHY_TABLE_DATALO, tmp);
   }
  }
 }

 b43_nphy_set_rf_sequence(dev, 5, rfseq_events, rfseq_delays, 3);
 b43_phy_maskset(dev, B43_NPHY_OVER_DGAIN1,
  ~B43_NPHY_OVER_DGAIN_CCKDGECV & 0xFFFF,
  0x5A << B43_NPHY_OVER_DGAIN_CCKDGECV_SHIFT);

 if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
  b43_phy_maskset(dev, B43_PHY_N(0xC5D), 0xFF80, 4);
}
