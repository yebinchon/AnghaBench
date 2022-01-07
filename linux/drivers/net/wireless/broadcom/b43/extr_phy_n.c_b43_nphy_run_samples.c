
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43_phy {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {int wl; struct b43_phy phy; } ;
struct b43_phy_n {int lpf_bw_overrode_for_sample_play; int bb_mult_save; } ;


 int B43_NPHY_IQLOCAL_CMDGCTL ;
 int B43_NPHY_REV7_RF_CTL_OVER3 ;
 int B43_NPHY_REV7_RF_CTL_OVER4 ;
 int B43_NPHY_RFSEQMODE ;
 int B43_NPHY_RFSEQMODE_CAOVER ;
 int B43_NPHY_RFSEQST ;
 int B43_NPHY_SAMP_CMD ;
 int B43_NPHY_SAMP_DEPCNT ;
 int B43_NPHY_SAMP_LOOPCNT ;
 int B43_NPHY_SAMP_WAITCNT ;
 int B43_NTAB16 (int,int) ;
 int b43_is_40mhz (struct b43_wldev*) ;
 int b43_nphy_read_lpf_ctl (struct b43_wldev*,int ) ;
 int b43_nphy_rf_ctl_override_rev19 (struct b43_wldev*,int,int,int ,int,int) ;
 int b43_nphy_rf_ctl_override_rev7 (struct b43_wldev*,int,int,int ,int,int) ;
 int b43_nphy_stay_in_carrier_search (struct b43_wldev*,int) ;
 int b43_ntab_read (struct b43_wldev*,int ) ;
 int b43_ntab_write (struct b43_wldev*,int ,int) ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;
 int b43err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void b43_nphy_run_samples(struct b43_wldev *dev, u16 samps, u16 loops,
     u16 wait, bool iqmode, bool dac_test,
     bool modify_bbmult)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_n *nphy = dev->phy.n;
 int i;
 u16 seq_mode;
 u32 tmp;

 b43_nphy_stay_in_carrier_search(dev, 1);

 if (phy->rev >= 7) {
  bool lpf_bw3, lpf_bw4;

  lpf_bw3 = b43_phy_read(dev, B43_NPHY_REV7_RF_CTL_OVER3) & 0x80;
  lpf_bw4 = b43_phy_read(dev, B43_NPHY_REV7_RF_CTL_OVER4) & 0x80;

  if (lpf_bw3 || lpf_bw4) {

  } else {
   u16 value = b43_nphy_read_lpf_ctl(dev, 0);
   if (phy->rev >= 19)
    b43_nphy_rf_ctl_override_rev19(dev, 0x80, value,
              0, 0, 1);
   else
    b43_nphy_rf_ctl_override_rev7(dev, 0x80, value,
             0, 0, 1);
   nphy->lpf_bw_overrode_for_sample_play = 1;
  }
 }

 if ((nphy->bb_mult_save & 0x80000000) == 0) {
  tmp = b43_ntab_read(dev, B43_NTAB16(15, 87));
  nphy->bb_mult_save = (tmp & 0xFFFF) | 0x80000000;
 }

 if (modify_bbmult) {
  tmp = !b43_is_40mhz(dev) ? 0x6464 : 0x4747;
  b43_ntab_write(dev, B43_NTAB16(15, 87), tmp);
 }

 b43_phy_write(dev, B43_NPHY_SAMP_DEPCNT, (samps - 1));

 if (loops != 0xFFFF)
  b43_phy_write(dev, B43_NPHY_SAMP_LOOPCNT, (loops - 1));
 else
  b43_phy_write(dev, B43_NPHY_SAMP_LOOPCNT, loops);

 b43_phy_write(dev, B43_NPHY_SAMP_WAITCNT, wait);

 seq_mode = b43_phy_read(dev, B43_NPHY_RFSEQMODE);

 b43_phy_set(dev, B43_NPHY_RFSEQMODE, B43_NPHY_RFSEQMODE_CAOVER);
 if (iqmode) {
  b43_phy_mask(dev, B43_NPHY_IQLOCAL_CMDGCTL, 0x7FFF);
  b43_phy_set(dev, B43_NPHY_IQLOCAL_CMDGCTL, 0x8000);
 } else {
  tmp = dac_test ? 5 : 1;
  b43_phy_write(dev, B43_NPHY_SAMP_CMD, tmp);
 }
 for (i = 0; i < 100; i++) {
  if (!(b43_phy_read(dev, B43_NPHY_RFSEQST) & 1)) {
   i = 0;
   break;
  }
  udelay(10);
 }
 if (i)
  b43err(dev->wl, "run samples timeout\n");

 b43_phy_write(dev, B43_NPHY_RFSEQMODE, seq_mode);

 b43_nphy_stay_in_carrier_search(dev, 0);
}
