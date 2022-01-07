
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lpphy_tx_gain_table_entry {int pad; int pga; int gm; int bb_mult; int dac; } ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {int wl; TYPE_1__ phy; } ;


 int B43_LPTAB32 (int,int) ;
 int B43_WARN_ON (int) ;
 scalar_t__ NL80211_BAND_5GHZ ;
 scalar_t__ b43_current_band (int ) ;
 int b43_lptab_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void lpphy_rev2plus_write_gain_table(struct b43_wldev *dev, int offset,
    struct lpphy_tx_gain_table_entry data)
{
 u32 tmp;

 B43_WARN_ON(dev->phy.rev < 2);

 tmp = data.pad << 16;
 tmp |= data.pga << 8;
 tmp |= data.gm;
 if (dev->phy.rev >= 3) {
  if (b43_current_band(dev->wl) == NL80211_BAND_5GHZ)
   tmp |= 0x10 << 24;
  else
   tmp |= 0x70 << 24;
 } else {
  if (b43_current_band(dev->wl) == NL80211_BAND_5GHZ)
   tmp |= 0x14 << 24;
  else
   tmp |= 0x7F << 24;
 }
 b43_lptab_write(dev, B43_LPTAB32(7, 0xC0 + offset), tmp);
 tmp = data.bb_mult << 20;
 tmp |= data.dac << 28;
 b43_lptab_write(dev, B43_LPTAB32(7, 0x140 + offset), tmp);
}
