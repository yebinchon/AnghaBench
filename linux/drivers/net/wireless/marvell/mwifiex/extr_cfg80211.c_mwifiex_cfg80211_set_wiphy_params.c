
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int frag_threshold; int rts_threshold; int retry_long; } ;
struct mwifiex_uap_bss_param {int retry_limit; int frag_threshold; int rts_threshold; } ;
struct mwifiex_private {int bss_role; int media_connected; int bss_started; } ;
struct mwifiex_adapter {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int ERROR ;
 int GFP_KERNEL ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_UAP_SYS_CONFIG ;
 int MWIFIEX_BSS_ROLE_ANY ;


 int UAP_BSS_PARAMS_I ;
 int WIPHY_PARAM_FRAG_THRESHOLD ;
 int WIPHY_PARAM_RETRY_LONG ;
 int WIPHY_PARAM_RTS_THRESHOLD ;
 int kfree (struct mwifiex_uap_bss_param*) ;
 struct mwifiex_uap_bss_param* kzalloc (int,int ) ;
 struct mwifiex_adapter* mwifiex_cfg80211_get_adapter (struct wiphy*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 struct mwifiex_private* mwifiex_get_priv (struct mwifiex_adapter*,int ) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_uap_bss_param*,int) ;
 int mwifiex_set_frag (struct mwifiex_private*,int ) ;
 int mwifiex_set_rts (struct mwifiex_private*,int ) ;
 int mwifiex_set_sys_config_invalid_data (struct mwifiex_uap_bss_param*) ;

__attribute__((used)) static int
mwifiex_cfg80211_set_wiphy_params(struct wiphy *wiphy, u32 changed)
{
 struct mwifiex_adapter *adapter = mwifiex_cfg80211_get_adapter(wiphy);
 struct mwifiex_private *priv;
 struct mwifiex_uap_bss_param *bss_cfg;
 int ret;

 priv = mwifiex_get_priv(adapter, MWIFIEX_BSS_ROLE_ANY);

 switch (priv->bss_role) {
 case 128:
  if (priv->bss_started) {
   mwifiex_dbg(adapter, ERROR,
        "cannot change wiphy params when bss started");
   return -EINVAL;
  }

  bss_cfg = kzalloc(sizeof(*bss_cfg), GFP_KERNEL);
  if (!bss_cfg)
   return -ENOMEM;

  mwifiex_set_sys_config_invalid_data(bss_cfg);

  if (changed & WIPHY_PARAM_RTS_THRESHOLD)
   bss_cfg->rts_threshold = wiphy->rts_threshold;
  if (changed & WIPHY_PARAM_FRAG_THRESHOLD)
   bss_cfg->frag_threshold = wiphy->frag_threshold;
  if (changed & WIPHY_PARAM_RETRY_LONG)
   bss_cfg->retry_limit = wiphy->retry_long;

  ret = mwifiex_send_cmd(priv, HostCmd_CMD_UAP_SYS_CONFIG,
           HostCmd_ACT_GEN_SET,
           UAP_BSS_PARAMS_I, bss_cfg,
           0);

  kfree(bss_cfg);
  if (ret) {
   mwifiex_dbg(adapter, ERROR,
        "Failed to set wiphy phy params\n");
   return ret;
  }
  break;

 case 129:
  if (priv->media_connected) {
   mwifiex_dbg(adapter, ERROR,
        "cannot change wiphy params when connected");
   return -EINVAL;
  }
  if (changed & WIPHY_PARAM_RTS_THRESHOLD) {
   ret = mwifiex_set_rts(priv,
           wiphy->rts_threshold);
   if (ret)
    return ret;
  }
  if (changed & WIPHY_PARAM_FRAG_THRESHOLD) {
   ret = mwifiex_set_frag(priv,
            wiphy->frag_threshold);
   if (ret)
    return ret;
  }
  break;
 }

 return 0;
}
