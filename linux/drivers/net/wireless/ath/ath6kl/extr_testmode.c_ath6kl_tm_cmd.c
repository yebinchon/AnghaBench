
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct nlattr {int dummy; } ;
struct ath6kl {int wmi; } ;


 size_t ATH6KL_TM_ATTR_CMD ;
 size_t ATH6KL_TM_ATTR_DATA ;
 int ATH6KL_TM_ATTR_MAX ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int ath6kl_tm_policy ;
 int ath6kl_wmi_test_cmd (int ,void*,int) ;
 void* nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_parse_deprecated (struct nlattr**,int ,void*,int,int ,int *) ;
 struct ath6kl* wiphy_priv (struct wiphy*) ;

int ath6kl_tm_cmd(struct wiphy *wiphy, struct wireless_dev *wdev,
    void *data, int len)
{
 struct ath6kl *ar = wiphy_priv(wiphy);
 struct nlattr *tb[ATH6KL_TM_ATTR_MAX + 1];
 int err, buf_len;
 void *buf;

 err = nla_parse_deprecated(tb, ATH6KL_TM_ATTR_MAX, data, len,
       ath6kl_tm_policy, ((void*)0));
 if (err)
  return err;

 if (!tb[ATH6KL_TM_ATTR_CMD])
  return -EINVAL;

 switch (nla_get_u32(tb[ATH6KL_TM_ATTR_CMD])) {
 case 128:
  if (!tb[ATH6KL_TM_ATTR_DATA])
   return -EINVAL;

  buf = nla_data(tb[ATH6KL_TM_ATTR_DATA]);
  buf_len = nla_len(tb[ATH6KL_TM_ATTR_DATA]);

  ath6kl_wmi_test_cmd(ar->wmi, buf, buf_len);

  return 0;

  break;
 case 129:
 default:
  return -EOPNOTSUPP;
 }
}
