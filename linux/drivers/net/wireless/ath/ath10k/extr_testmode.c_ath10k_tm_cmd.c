
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k {int dummy; } ;


 size_t ATH10K_TM_ATTR_CMD ;
 int ATH10K_TM_ATTR_MAX ;




 int EINVAL ;
 int EOPNOTSUPP ;
 int ath10k_tm_cmd_get_version (struct ath10k*,struct nlattr**) ;
 int ath10k_tm_cmd_utf_start (struct ath10k*,struct nlattr**) ;
 int ath10k_tm_cmd_utf_stop (struct ath10k*,struct nlattr**) ;
 int ath10k_tm_cmd_wmi (struct ath10k*,struct nlattr**) ;
 int ath10k_tm_policy ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_deprecated (struct nlattr**,int ,void*,int,int ,int *) ;

int ath10k_tm_cmd(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
    void *data, int len)
{
 struct ath10k *ar = hw->priv;
 struct nlattr *tb[ATH10K_TM_ATTR_MAX + 1];
 int ret;

 ret = nla_parse_deprecated(tb, ATH10K_TM_ATTR_MAX, data, len,
       ath10k_tm_policy, ((void*)0));
 if (ret)
  return ret;

 if (!tb[ATH10K_TM_ATTR_CMD])
  return -EINVAL;

 switch (nla_get_u32(tb[ATH10K_TM_ATTR_CMD])) {
 case 131:
  return ath10k_tm_cmd_get_version(ar, tb);
 case 130:
  return ath10k_tm_cmd_utf_start(ar, tb);
 case 129:
  return ath10k_tm_cmd_utf_stop(ar, tb);
 case 128:
  return ath10k_tm_cmd_wmi(ar, tb);
 default:
  return -EOPNOTSUPP;
 }
}
