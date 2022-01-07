
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_channel {int hw_value; } ;
struct b43_wldev {int dummy; } ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;


 int b43_phy_lcn_afe_set_unset (struct b43_wldev*) ;
 int b43_phy_lcn_load_tx_iir_cck_filter (struct b43_wldev*,int) ;
 int b43_phy_lcn_load_tx_iir_ofdm_filter (struct b43_wldev*,int ) ;
 int b43_phy_lcn_set_channel_tweaks (struct b43_wldev*,int) ;
 int b43_phy_maskset (struct b43_wldev*,int,int,int) ;
 int b43_phy_set (struct b43_wldev*,int,int) ;
 int b43_phy_write (struct b43_wldev*,int,int const) ;
 int b43_radio_2064_channel_setup (struct b43_wldev*) ;
 int mdelay (int) ;

__attribute__((used)) static int b43_phy_lcn_set_channel(struct b43_wldev *dev,
       struct ieee80211_channel *channel,
       enum nl80211_channel_type channel_type)
{
 static const u16 sfo_cfg[14][2] = {
  {965, 1087}, {967, 1085}, {969, 1082}, {971, 1080}, {973, 1078},
  {975, 1076}, {977, 1073}, {979, 1071}, {981, 1069}, {983, 1067},
  {985, 1065}, {987, 1063}, {989, 1060}, {994, 1055},
 };

 b43_phy_lcn_set_channel_tweaks(dev, channel->hw_value);

 b43_phy_set(dev, 0x44a, 0x44);
 b43_phy_write(dev, 0x44a, 0x80);

 b43_radio_2064_channel_setup(dev);
 mdelay(1);

 b43_phy_lcn_afe_set_unset(dev);

 b43_phy_write(dev, 0x657, sfo_cfg[channel->hw_value - 1][0]);
 b43_phy_write(dev, 0x658, sfo_cfg[channel->hw_value - 1][1]);

 if (channel->hw_value == 14) {
  b43_phy_maskset(dev, 0x448, ~(0x3 << 8), (2) << 8);
  b43_phy_lcn_load_tx_iir_cck_filter(dev, 3);
 } else {
  b43_phy_maskset(dev, 0x448, ~(0x3 << 8), (1) << 8);

  b43_phy_lcn_load_tx_iir_cck_filter(dev, 25);
 }

 b43_phy_lcn_load_tx_iir_ofdm_filter(dev, 0);

 b43_phy_maskset(dev, 0x4eb, ~(0x7 << 3), 0x1 << 3);

 return 0;
}
