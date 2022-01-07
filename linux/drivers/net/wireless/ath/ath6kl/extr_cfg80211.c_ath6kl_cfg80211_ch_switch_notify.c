
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cfg80211_chan_def {int dummy; } ;
struct TYPE_5__ {int mtx; } ;
struct ath6kl_vif {TYPE_1__ wdev; int ndev; TYPE_2__* ar; int nw_type; } ;
typedef enum wmi_phy_mode { ____Placeholder_wmi_phy_mode } wmi_phy_mode ;
struct TYPE_7__ {scalar_t__ ht_supported; } ;
struct TYPE_8__ {TYPE_3__ ht_cap; } ;
struct TYPE_6__ {int wiphy; } ;


 int ATH6KL_DBG_WLAN_CFG ;
 int NL80211_CHAN_HT20 ;
 int NL80211_CHAN_NO_HT ;
 int WMI_11G_HT20 ;
 TYPE_4__ ath6kl_band_2ghz ;
 int ath6kl_dbg (int ,char*,int ,int,int) ;
 int cfg80211_ch_switch_notify (int ,struct cfg80211_chan_def*) ;
 int cfg80211_chandef_create (struct cfg80211_chan_def*,int ,int ) ;
 int ieee80211_get_channel (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ath6kl_cfg80211_ch_switch_notify(struct ath6kl_vif *vif, int freq,
          enum wmi_phy_mode mode)
{
 struct cfg80211_chan_def chandef;

 ath6kl_dbg(ATH6KL_DBG_WLAN_CFG,
     "channel switch notify nw_type %d freq %d mode %d\n",
     vif->nw_type, freq, mode);

 cfg80211_chandef_create(&chandef,
    ieee80211_get_channel(vif->ar->wiphy, freq),
    (mode == WMI_11G_HT20 &&
     ath6kl_band_2ghz.ht_cap.ht_supported) ?
     NL80211_CHAN_HT20 : NL80211_CHAN_NO_HT);

 mutex_lock(&vif->wdev.mtx);
 cfg80211_ch_switch_notify(vif->ndev, &chandef);
 mutex_unlock(&vif->wdev.mtx);
}
