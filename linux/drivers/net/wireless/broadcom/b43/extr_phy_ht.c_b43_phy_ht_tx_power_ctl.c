
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct b43_phy_ht* ht; } ;
struct b43_wldev {int wl; TYPE_1__ phy; } ;
struct b43_phy_ht {int* tx_pwr_idx; int tx_pwr_ctl; } ;



 int B43_PHY_HT_TXPCTL_CMD_C1_COEFF ;
 int B43_PHY_HT_TXPCTL_CMD_C1_HWPCTLEN ;
 int B43_PHY_HT_TXPCTL_CMD_C1_INIT ;
 int B43_PHY_HT_TXPCTL_CMD_C1_PCTLEN ;





 scalar_t__ NL80211_BAND_5GHZ ;
 scalar_t__ b43_current_band (int ) ;
 int b43_phy_mask (struct b43_wldev*,int const,int) ;
 int b43_phy_read (struct b43_wldev*,int const) ;
 int b43_phy_set (struct b43_wldev*,int const,int) ;
 int b43_phy_write (struct b43_wldev*,int const,int) ;

__attribute__((used)) static void b43_phy_ht_tx_power_ctl(struct b43_wldev *dev, bool enable)
{
 struct b43_phy_ht *phy_ht = dev->phy.ht;
 u16 en_bits = B43_PHY_HT_TXPCTL_CMD_C1_COEFF |
        B43_PHY_HT_TXPCTL_CMD_C1_HWPCTLEN |
        B43_PHY_HT_TXPCTL_CMD_C1_PCTLEN;
 static const u16 cmd_regs[3] = { 133,
      132,
      131 };
 static const u16 status_regs[3] = { 130,
         129,
         128 };
 int i;

 if (!enable) {
  if (b43_phy_read(dev, 133) & en_bits) {

   for (i = 0; i < 3; i++)
    phy_ht->tx_pwr_idx[i] =
     b43_phy_read(dev, status_regs[i]);
  }
  b43_phy_mask(dev, 133, ~en_bits);
 } else {
  b43_phy_set(dev, 133, en_bits);

  if (b43_current_band(dev->wl) == NL80211_BAND_5GHZ) {
   for (i = 0; i < 3; i++)
    b43_phy_write(dev, cmd_regs[i], 0x32);
  }

  for (i = 0; i < 3; i++)
   if (phy_ht->tx_pwr_idx[i] <=
       B43_PHY_HT_TXPCTL_CMD_C1_INIT)
    b43_phy_write(dev, cmd_regs[i],
           phy_ht->tx_pwr_idx[i]);
 }

 phy_ht->tx_pwr_ctl = enable;
}
