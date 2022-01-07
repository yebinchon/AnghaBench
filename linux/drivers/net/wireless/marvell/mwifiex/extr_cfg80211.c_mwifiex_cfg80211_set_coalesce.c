
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_coalesce_cfg {int num_of_rules; int * rule; } ;
struct mwifiex_adapter {int dummy; } ;
struct cfg80211_coalesce {int n_rules; int * rules; } ;
typedef int coalesce_cfg ;


 int ERROR ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_COALESCE_CFG ;
 int MWIFIEX_BSS_ROLE_STA ;
 int WARN ;
 int memset (struct mwifiex_ds_coalesce_cfg*,int ,int) ;
 struct mwifiex_adapter* mwifiex_cfg80211_get_adapter (struct wiphy*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_fill_coalesce_rule_info (struct mwifiex_private*,int *,int *) ;
 struct mwifiex_private* mwifiex_get_priv (struct mwifiex_adapter*,int ) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_ds_coalesce_cfg*,int) ;

__attribute__((used)) static int mwifiex_cfg80211_set_coalesce(struct wiphy *wiphy,
      struct cfg80211_coalesce *coalesce)
{
 struct mwifiex_adapter *adapter = mwifiex_cfg80211_get_adapter(wiphy);
 int i, ret;
 struct mwifiex_ds_coalesce_cfg coalesce_cfg;
 struct mwifiex_private *priv =
   mwifiex_get_priv(adapter, MWIFIEX_BSS_ROLE_STA);

 memset(&coalesce_cfg, 0, sizeof(coalesce_cfg));
 if (!coalesce) {
  mwifiex_dbg(adapter, WARN,
       "Disable coalesce and reset all previous rules\n");
  return mwifiex_send_cmd(priv, HostCmd_CMD_COALESCE_CFG,
     HostCmd_ACT_GEN_SET, 0,
     &coalesce_cfg, 1);
 }

 coalesce_cfg.num_of_rules = coalesce->n_rules;
 for (i = 0; i < coalesce->n_rules; i++) {
  ret = mwifiex_fill_coalesce_rule_info(priv, &coalesce->rules[i],
            &coalesce_cfg.rule[i]);
  if (ret) {
   mwifiex_dbg(adapter, ERROR,
        "Recheck the patterns provided for rule %d\n",
    i + 1);
   return ret;
  }
 }

 return mwifiex_send_cmd(priv, HostCmd_CMD_COALESCE_CFG,
    HostCmd_ACT_GEN_SET, 0, &coalesce_cfg, 1);
}
