
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {TYPE_2__** bands; } ;
struct wil6210_priv {int fw_capabilities; } ;
struct TYPE_3__ {int bw_config; int channels; } ;
struct TYPE_4__ {TYPE_1__ edmg_cap; int n_channels; } ;


 size_t NL80211_BAND_60GHZ ;
 int WIL_EDMG_BW_CONFIGURATION ;
 int WIL_EDMG_CHANNELS ;
 int WMI_FW_CAPABILITY_CHANNEL_BONDING ;
 scalar_t__ test_bit (int ,int ) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 int wil_num_supported_channels (struct wil6210_priv*) ;
 struct wiphy* wil_to_wiphy (struct wil6210_priv*) ;

void update_supported_bands(struct wil6210_priv *wil)
{
 struct wiphy *wiphy = wil_to_wiphy(wil);

 wil_dbg_misc(wil, "update supported bands");

 wiphy->bands[NL80211_BAND_60GHZ]->n_channels =
      wil_num_supported_channels(wil);

 if (test_bit(WMI_FW_CAPABILITY_CHANNEL_BONDING, wil->fw_capabilities)) {
  wiphy->bands[NL80211_BAND_60GHZ]->edmg_cap.channels =
       WIL_EDMG_CHANNELS;
  wiphy->bands[NL80211_BAND_60GHZ]->edmg_cap.bw_config =
            WIL_EDMG_BW_CONFIGURATION;
 }
}
