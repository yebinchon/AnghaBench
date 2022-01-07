
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dummy; } ;
struct cfg80211_beacon_data {int dummy; } ;


 int mwifiex_set_mgmt_beacon_data_ies (struct mwifiex_private*,struct cfg80211_beacon_data*) ;
 int mwifiex_uap_parse_tail_ies (struct mwifiex_private*,struct cfg80211_beacon_data*) ;

int mwifiex_set_mgmt_ies(struct mwifiex_private *priv,
    struct cfg80211_beacon_data *info)
{
 int ret;

 ret = mwifiex_uap_parse_tail_ies(priv, info);

 if (ret)
  return ret;

 return mwifiex_set_mgmt_beacon_data_ies(priv, info);
}
