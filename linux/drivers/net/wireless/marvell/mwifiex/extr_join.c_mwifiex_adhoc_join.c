
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ssid_len; scalar_t__ ssid; } ;
struct TYPE_6__ {scalar_t__ bss_mode; scalar_t__ channel; TYPE_4__ ssid; } ;
struct TYPE_7__ {scalar_t__ band; TYPE_1__ bss_descriptor; } ;
struct mwifiex_private {TYPE_2__ curr_bss_params; TYPE_5__* adapter; } ;
struct TYPE_8__ {scalar_t__ ssid_len; scalar_t__ ssid; } ;
struct mwifiex_bssdescriptor {int disable_11ac; int disable_11n; TYPE_3__ ssid; } ;
struct TYPE_10__ {int config_bands; int fw_cap_info; } ;


 int BAND_AAC ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_802_11_AD_HOC_JOIN ;
 int INFO ;
 scalar_t__ ISSUPP_11ACENABLED (int ) ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int mwifiex_dbg (TYPE_5__*,int ,char*,...) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_bssdescriptor*,int) ;
 int mwifiex_set_11ac_ba_params (struct mwifiex_private*) ;
 int mwifiex_set_ba_params (struct mwifiex_private*) ;
 int mwifiex_ssid_cmp (TYPE_3__*,TYPE_4__*) ;

int mwifiex_adhoc_join(struct mwifiex_private *priv,
         struct mwifiex_bssdescriptor *bss_desc)
{
 mwifiex_dbg(priv->adapter, INFO,
      "info: adhoc join: curr_bss ssid =%s\n",
      priv->curr_bss_params.bss_descriptor.ssid.ssid);
 mwifiex_dbg(priv->adapter, INFO,
      "info: adhoc join: curr_bss ssid_len =%u\n",
      priv->curr_bss_params.bss_descriptor.ssid.ssid_len);
 mwifiex_dbg(priv->adapter, INFO, "info: adhoc join: ssid =%s\n",
      bss_desc->ssid.ssid);
 mwifiex_dbg(priv->adapter, INFO, "info: adhoc join: ssid_len =%u\n",
      bss_desc->ssid.ssid_len);


 if (priv->curr_bss_params.bss_descriptor.ssid.ssid_len &&
     !mwifiex_ssid_cmp(&bss_desc->ssid,
         &priv->curr_bss_params.bss_descriptor.ssid) &&
     (priv->curr_bss_params.bss_descriptor.bss_mode ==
       NL80211_IFTYPE_ADHOC)) {
  mwifiex_dbg(priv->adapter, INFO,
       "info: ADHOC_J_CMD: new ad-hoc SSID\t"
       "is the same as current; not attempting to re-join\n");
  return -1;
 }

 if (ISSUPP_11ACENABLED(priv->adapter->fw_cap_info) &&
     !bss_desc->disable_11n && !bss_desc->disable_11ac &&
     priv->adapter->config_bands & BAND_AAC)
  mwifiex_set_11ac_ba_params(priv);
 else
  mwifiex_set_ba_params(priv);

 mwifiex_dbg(priv->adapter, INFO,
      "info: curr_bss_params.channel = %d\n",
      priv->curr_bss_params.bss_descriptor.channel);
 mwifiex_dbg(priv->adapter, INFO,
      "info: curr_bss_params.band = %c\n",
      priv->curr_bss_params.band);

 return mwifiex_send_cmd(priv, HostCmd_CMD_802_11_AD_HOC_JOIN,
    HostCmd_ACT_GEN_SET, 0, bss_desc, 1);
}
