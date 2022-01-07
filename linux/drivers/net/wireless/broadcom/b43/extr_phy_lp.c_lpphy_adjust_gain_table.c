
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int rev; struct b43_phy_lp* lp; } ;
struct b43_wldev {int wl; TYPE_1__ phy; } ;
struct b43_phy_lp {int tx_isolation_med_band; int tx_isolation_low_band; int tx_isolation_hi_band; } ;


 int B43_LPTAB16 (int,int ) ;
 int B43_WARN_ON (int) ;
 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ b43_current_band (int ) ;
 int b43_lptab_write_bulk (struct b43_wldev*,int ,int,int*) ;

__attribute__((used)) static void lpphy_adjust_gain_table(struct b43_wldev *dev, u32 freq)
{
 struct b43_phy_lp *lpphy = dev->phy.lp;
 u16 temp[3];
 u16 isolation;

 B43_WARN_ON(dev->phy.rev >= 2);

 if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
  isolation = lpphy->tx_isolation_med_band;
 else if (freq <= 5320)
  isolation = lpphy->tx_isolation_low_band;
 else if (freq <= 5700)
  isolation = lpphy->tx_isolation_med_band;
 else
  isolation = lpphy->tx_isolation_hi_band;

 temp[0] = ((isolation - 26) / 12) << 12;
 temp[1] = temp[0] + 0x1000;
 temp[2] = temp[0] + 0x2000;

 b43_lptab_write_bulk(dev, B43_LPTAB16(13, 0), 3, temp);
 b43_lptab_write_bulk(dev, B43_LPTAB16(12, 0), 3, temp);
}
