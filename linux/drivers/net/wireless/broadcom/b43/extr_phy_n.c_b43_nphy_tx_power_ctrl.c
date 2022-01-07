
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43_phy {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; int wl; } ;
struct b43_phy_n {int txpwrctrl; int* tx_pwr_idx; scalar_t__ hang_avoid; int adj_pwr_tbl; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int B43_HF_TSSIRPSMW ;
 int B43_NPHY_AFECTL_OVER ;
 int B43_NPHY_AFECTL_OVER1 ;
 int B43_NPHY_BPHY_CTL3 ;
 int B43_NPHY_BPHY_CTL3_SCALE ;
 int B43_NPHY_C1_TXPCTL_STAT ;
 int B43_NPHY_C2_TXPCTL_STAT ;
 int B43_NPHY_PAPD_EN0 ;
 int B43_NPHY_PAPD_EN1 ;
 int B43_NPHY_TABLE_ADDR ;
 int B43_NPHY_TABLE_DATALO ;
 int B43_NPHY_TXPCTL_CMD ;
 int B43_NPHY_TXPCTL_CMD_COEFF ;
 int B43_NPHY_TXPCTL_CMD_HWPCTLEN ;
 int B43_NPHY_TXPCTL_CMD_INIT ;
 int B43_NPHY_TXPCTL_CMD_PCTLEN ;
 int B43_NPHY_TXPCTL_INIT ;
 int B43_NPHY_TXPCTL_INIT_PIDXI1 ;
 int B43_NTAB16 (int,int) ;
 int NL80211_BAND_5GHZ ;
 int b43_current_band (int ) ;
 int b43_hf_read (struct b43_wldev*) ;
 int b43_hf_write (struct b43_wldev*,int) ;
 scalar_t__ b43_is_40mhz (struct b43_wldev*) ;
 scalar_t__ b43_nphy_ipa (struct b43_wldev*) ;
 int b43_nphy_stay_in_carrier_search (struct b43_wldev*,int) ;
 int b43_ntab_write_bulk (struct b43_wldev*,int ,int,int ) ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_nphy_tx_power_ctrl(struct b43_wldev *dev, bool enable)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_n *nphy = dev->phy.n;
 u8 i;
 u16 bmask, val, tmp;
 enum nl80211_band band = b43_current_band(dev->wl);

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 1);

 nphy->txpwrctrl = enable;
 if (!enable) {
  if (dev->phy.rev >= 3 &&
      (b43_phy_read(dev, B43_NPHY_TXPCTL_CMD) &
       (B43_NPHY_TXPCTL_CMD_COEFF |
        B43_NPHY_TXPCTL_CMD_HWPCTLEN |
        B43_NPHY_TXPCTL_CMD_PCTLEN))) {

   nphy->tx_pwr_idx[0] = b43_phy_read(dev,
      B43_NPHY_C1_TXPCTL_STAT) & 0x7f;
   nphy->tx_pwr_idx[1] = b43_phy_read(dev,
      B43_NPHY_C2_TXPCTL_STAT) & 0x7f;
  }

  b43_phy_write(dev, B43_NPHY_TABLE_ADDR, 0x6840);
  for (i = 0; i < 84; i++)
   b43_phy_write(dev, B43_NPHY_TABLE_DATALO, 0);

  b43_phy_write(dev, B43_NPHY_TABLE_ADDR, 0x6C40);
  for (i = 0; i < 84; i++)
   b43_phy_write(dev, B43_NPHY_TABLE_DATALO, 0);

  tmp = B43_NPHY_TXPCTL_CMD_COEFF | B43_NPHY_TXPCTL_CMD_HWPCTLEN;
  if (dev->phy.rev >= 3)
   tmp |= B43_NPHY_TXPCTL_CMD_PCTLEN;
  b43_phy_mask(dev, B43_NPHY_TXPCTL_CMD, ~tmp);

  if (dev->phy.rev >= 3) {
   b43_phy_set(dev, B43_NPHY_AFECTL_OVER1, 0x0100);
   b43_phy_set(dev, B43_NPHY_AFECTL_OVER, 0x0100);
  } else {
   b43_phy_set(dev, B43_NPHY_AFECTL_OVER, 0x4000);
  }

  if (dev->phy.rev == 2)
   b43_phy_maskset(dev, B43_NPHY_BPHY_CTL3,
    ~B43_NPHY_BPHY_CTL3_SCALE, 0x53);
  else if (dev->phy.rev < 2)
   b43_phy_maskset(dev, B43_NPHY_BPHY_CTL3,
    ~B43_NPHY_BPHY_CTL3_SCALE, 0x5A);

  if (dev->phy.rev < 2 && b43_is_40mhz(dev))
   b43_hf_write(dev, b43_hf_read(dev) | B43_HF_TSSIRPSMW);
 } else {
  b43_ntab_write_bulk(dev, B43_NTAB16(26, 64), 84,
        nphy->adj_pwr_tbl);
  b43_ntab_write_bulk(dev, B43_NTAB16(27, 64), 84,
        nphy->adj_pwr_tbl);

  bmask = B43_NPHY_TXPCTL_CMD_COEFF |
   B43_NPHY_TXPCTL_CMD_HWPCTLEN;

  val = B43_NPHY_TXPCTL_CMD_COEFF | B43_NPHY_TXPCTL_CMD_HWPCTLEN;
  if (dev->phy.rev >= 3) {
   bmask |= B43_NPHY_TXPCTL_CMD_PCTLEN;
   if (val)
    val |= B43_NPHY_TXPCTL_CMD_PCTLEN;
  }
  b43_phy_maskset(dev, B43_NPHY_TXPCTL_CMD, ~(bmask), val);

  if (band == NL80211_BAND_5GHZ) {
   if (phy->rev >= 19) {

   } else if (phy->rev >= 7) {
    b43_phy_maskset(dev, B43_NPHY_TXPCTL_CMD,
      ~B43_NPHY_TXPCTL_CMD_INIT,
      0x32);
    b43_phy_maskset(dev, B43_NPHY_TXPCTL_INIT,
      ~B43_NPHY_TXPCTL_INIT_PIDXI1,
      0x32);
   } else {
    b43_phy_maskset(dev, B43_NPHY_TXPCTL_CMD,
      ~B43_NPHY_TXPCTL_CMD_INIT,
      0x64);
    if (phy->rev > 1)
     b43_phy_maskset(dev,
       B43_NPHY_TXPCTL_INIT,
       ~B43_NPHY_TXPCTL_INIT_PIDXI1,
       0x64);
   }
  }

  if (dev->phy.rev >= 3) {
   if (nphy->tx_pwr_idx[0] != 128 &&
       nphy->tx_pwr_idx[1] != 128) {

    b43_phy_maskset(dev, B43_NPHY_TXPCTL_CMD,
      ~B43_NPHY_TXPCTL_CMD_INIT,
      nphy->tx_pwr_idx[0]);
    if (dev->phy.rev > 1)
     b43_phy_maskset(dev,
      B43_NPHY_TXPCTL_INIT,
      ~0xff, nphy->tx_pwr_idx[1]);
   }
  }

  if (phy->rev >= 7) {

  }

  if (dev->phy.rev >= 3) {
   b43_phy_mask(dev, B43_NPHY_AFECTL_OVER1, ~0x100);
   b43_phy_mask(dev, B43_NPHY_AFECTL_OVER, ~0x100);
  } else {
   b43_phy_mask(dev, B43_NPHY_AFECTL_OVER, ~0x4000);
  }

  if (dev->phy.rev == 2)
   b43_phy_maskset(dev, B43_NPHY_BPHY_CTL3, ~0xFF, 0x3b);
  else if (dev->phy.rev < 2)
   b43_phy_maskset(dev, B43_NPHY_BPHY_CTL3, ~0xFF, 0x40);

  if (dev->phy.rev < 2 && b43_is_40mhz(dev))
   b43_hf_write(dev, b43_hf_read(dev) & ~B43_HF_TSSIRPSMW);

  if (b43_nphy_ipa(dev)) {
   b43_phy_mask(dev, B43_NPHY_PAPD_EN0, ~0x4);
   b43_phy_mask(dev, B43_NPHY_PAPD_EN1, ~0x4);
  }
 }

 if (nphy->hang_avoid)
  b43_nphy_stay_in_carrier_search(dev, 0);
}
