
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int ssid_len; int * ssid; } ;
struct mwifiex_uap_bss_param {int sta_ao_timer; int ps_sta_ao_timer; int bcast_ssid_ctl; TYPE_1__ ssid; scalar_t__ dtim_period; scalar_t__ beacon_period; } ;
struct TYPE_8__ {int is_11h_active; } ;
struct mwifiex_private {int bss_cfg; TYPE_3__* adapter; int netdev; TYPE_2__ state_11h; int bss_mode; scalar_t__ ap_11ac_enabled; } ;
struct TYPE_10__ {int width; } ;
struct cfg80211_ap_settings {int ssid_len; int inactivity_timeout; int hidden_ssid; int beacon; TYPE_4__ chandef; struct mwifiex_uap_bss_param* ssid; scalar_t__ dtim_period; scalar_t__ beacon_interval; } ;
struct TYPE_9__ {scalar_t__ is_hw_11ac_capable; } ;


 int EINVAL ;
 int ENOMEM ;
 int ERROR ;
 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 int GFP_KERNEL ;
 int INFO ;
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ;



 int cfg80211_chandef_dfs_required (struct wiphy*,TYPE_4__*,int ) ;
 int kfree (struct mwifiex_uap_bss_param*) ;
 struct mwifiex_uap_bss_param* kzalloc (int,int ) ;
 int memcpy (int *,struct mwifiex_uap_bss_param*,int) ;
 scalar_t__ mwifiex_11h_activate (struct mwifiex_private*,int) ;
 scalar_t__ mwifiex_config_start_uap (struct mwifiex_private*,struct mwifiex_uap_bss_param*) ;
 int mwifiex_config_uap_11d (struct mwifiex_private*,int *) ;
 int mwifiex_dbg (TYPE_3__*,int ,char*) ;
 scalar_t__ mwifiex_is_11h_active (struct mwifiex_private*) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_set_11ac_ba_params (struct mwifiex_private*) ;
 int mwifiex_set_ba_params (struct mwifiex_private*) ;
 int mwifiex_set_ht_params (struct mwifiex_private*,struct mwifiex_uap_bss_param*,struct cfg80211_ap_settings*) ;
 scalar_t__ mwifiex_set_mgmt_ies (struct mwifiex_private*,int *) ;
 scalar_t__ mwifiex_set_secure_params (struct mwifiex_private*,struct mwifiex_uap_bss_param*,struct cfg80211_ap_settings*) ;
 int mwifiex_set_sys_config_invalid_data (struct mwifiex_uap_bss_param*) ;
 int mwifiex_set_tpc_params (struct mwifiex_private*,struct mwifiex_uap_bss_param*,struct cfg80211_ap_settings*) ;
 int mwifiex_set_uap_rates (struct mwifiex_uap_bss_param*,struct cfg80211_ap_settings*) ;
 int mwifiex_set_vht_params (struct mwifiex_private*,struct mwifiex_uap_bss_param*,struct cfg80211_ap_settings*) ;
 int mwifiex_set_vht_width (struct mwifiex_private*,int ,scalar_t__) ;
 int mwifiex_set_wmm_params (struct mwifiex_private*,struct mwifiex_uap_bss_param*,struct cfg80211_ap_settings*) ;
 int mwifiex_uap_set_channel (struct mwifiex_private*,struct mwifiex_uap_bss_param*,TYPE_4__) ;
 int mwifiex_wake_up_net_dev_queue (int ,TYPE_3__*) ;
 int netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;

__attribute__((used)) static int mwifiex_cfg80211_start_ap(struct wiphy *wiphy,
         struct net_device *dev,
         struct cfg80211_ap_settings *params)
{
 struct mwifiex_uap_bss_param *bss_cfg;
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);

 if (GET_BSS_ROLE(priv) != MWIFIEX_BSS_ROLE_UAP)
  return -1;

 bss_cfg = kzalloc(sizeof(struct mwifiex_uap_bss_param), GFP_KERNEL);
 if (!bss_cfg)
  return -ENOMEM;

 mwifiex_set_sys_config_invalid_data(bss_cfg);

 if (params->beacon_interval)
  bss_cfg->beacon_period = params->beacon_interval;
 if (params->dtim_period)
  bss_cfg->dtim_period = params->dtim_period;

 if (params->ssid && params->ssid_len) {
  memcpy(bss_cfg->ssid.ssid, params->ssid, params->ssid_len);
  bss_cfg->ssid.ssid_len = params->ssid_len;
 }
 if (params->inactivity_timeout > 0) {

  bss_cfg->sta_ao_timer = 10 * params->inactivity_timeout;
  bss_cfg->ps_sta_ao_timer = 10 * params->inactivity_timeout;
 }

 switch (params->hidden_ssid) {
 case 130:
  bss_cfg->bcast_ssid_ctl = 1;
  break;
 case 128:
  bss_cfg->bcast_ssid_ctl = 0;
  break;
 case 129:
  bss_cfg->bcast_ssid_ctl = 2;
  break;
 default:
  kfree(bss_cfg);
  return -EINVAL;
 }

 mwifiex_uap_set_channel(priv, bss_cfg, params->chandef);
 mwifiex_set_uap_rates(bss_cfg, params);

 if (mwifiex_set_secure_params(priv, bss_cfg, params)) {
  mwifiex_dbg(priv->adapter, ERROR,
       "Failed to parse security parameters!\n");
  goto out;
 }

 mwifiex_set_ht_params(priv, bss_cfg, params);

 if (priv->adapter->is_hw_11ac_capable) {
  mwifiex_set_vht_params(priv, bss_cfg, params);
  mwifiex_set_vht_width(priv, params->chandef.width,
          priv->ap_11ac_enabled);
 }

 if (priv->ap_11ac_enabled)
  mwifiex_set_11ac_ba_params(priv);
 else
  mwifiex_set_ba_params(priv);

 mwifiex_set_wmm_params(priv, bss_cfg, params);

 if (mwifiex_is_11h_active(priv))
  mwifiex_set_tpc_params(priv, bss_cfg, params);

 if (mwifiex_is_11h_active(priv) &&
     !cfg80211_chandef_dfs_required(wiphy, &params->chandef,
        priv->bss_mode)) {
  mwifiex_dbg(priv->adapter, INFO,
       "Disable 11h extensions in FW\n");
  if (mwifiex_11h_activate(priv, 0)) {
   mwifiex_dbg(priv->adapter, ERROR,
        "Failed to disable 11h extensions!!");
   goto out;
  }
  priv->state_11h.is_11h_active = 0;
 }

 mwifiex_config_uap_11d(priv, &params->beacon);

 if (mwifiex_config_start_uap(priv, bss_cfg)) {
  mwifiex_dbg(priv->adapter, ERROR,
       "Failed to start AP\n");
  goto out;
 }

 if (mwifiex_set_mgmt_ies(priv, &params->beacon))
  goto out;

 if (!netif_carrier_ok(priv->netdev))
  netif_carrier_on(priv->netdev);
 mwifiex_wake_up_net_dev_queue(priv->netdev, priv->adapter);

 memcpy(&priv->bss_cfg, bss_cfg, sizeof(priv->bss_cfg));
 kfree(bss_cfg);
 return 0;

out:
 kfree(bss_cfg);
 return -1;
}
