
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {scalar_t__ assoc_rsp_size; TYPE_1__* adapter; } ;
struct mwifiex_bssdescriptor {scalar_t__ bss_mode; int disable_11ac; int disable_11n; } ;
struct TYPE_2__ {int config_bands; int fw_cap_info; } ;


 int BAND_AAC ;
 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_802_11_ASSOCIATE ;
 scalar_t__ ISSUPP_11ACENABLED (int ) ;
 scalar_t__ MWIFIEX_BSS_ROLE_STA ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_bssdescriptor*,int) ;
 int mwifiex_set_11ac_ba_params (struct mwifiex_private*) ;
 int mwifiex_set_ba_params (struct mwifiex_private*) ;

int mwifiex_associate(struct mwifiex_private *priv,
        struct mwifiex_bssdescriptor *bss_desc)
{



 if ((GET_BSS_ROLE(priv) != MWIFIEX_BSS_ROLE_STA) ||
     (bss_desc->bss_mode != NL80211_IFTYPE_STATION))
  return -1;

 if (ISSUPP_11ACENABLED(priv->adapter->fw_cap_info) &&
     !bss_desc->disable_11n && !bss_desc->disable_11ac &&
     priv->adapter->config_bands & BAND_AAC)
  mwifiex_set_11ac_ba_params(priv);
 else
  mwifiex_set_ba_params(priv);



 priv->assoc_rsp_size = 0;

 return mwifiex_send_cmd(priv, HostCmd_CMD_802_11_ASSOCIATE,
    HostCmd_ACT_GEN_SET, 0, bss_desc, 1);
}
