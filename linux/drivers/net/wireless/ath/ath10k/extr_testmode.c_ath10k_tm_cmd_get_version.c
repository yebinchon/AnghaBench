
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int wmi_op_version; } ;
struct TYPE_5__ {TYPE_1__ fw_file; } ;
struct ath10k {TYPE_2__ normal_mode_fw; TYPE_3__* hw; } ;
struct TYPE_6__ {int wiphy; } ;


 int ATH10K_DBG_TESTMODE ;
 int ATH10K_TESTMODE_VERSION_MAJOR ;
 int ATH10K_TESTMODE_VERSION_MINOR ;
 int ATH10K_TM_ATTR_VERSION_MAJOR ;
 int ATH10K_TM_ATTR_VERSION_MINOR ;
 int ATH10K_TM_ATTR_WMI_OP_VERSION ;
 int ENOMEM ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ) ;
 struct sk_buff* cfg80211_testmode_alloc_reply_skb (int ,int ) ;
 int cfg80211_testmode_reply (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nla_total_size (int) ;

__attribute__((used)) static int ath10k_tm_cmd_get_version(struct ath10k *ar, struct nlattr *tb[])
{
 struct sk_buff *skb;
 int ret;

 ath10k_dbg(ar, ATH10K_DBG_TESTMODE,
     "testmode cmd get version_major %d version_minor %d\n",
     ATH10K_TESTMODE_VERSION_MAJOR,
     ATH10K_TESTMODE_VERSION_MINOR);

 skb = cfg80211_testmode_alloc_reply_skb(ar->hw->wiphy,
      nla_total_size(sizeof(u32)));
 if (!skb)
  return -ENOMEM;

 ret = nla_put_u32(skb, ATH10K_TM_ATTR_VERSION_MAJOR,
     ATH10K_TESTMODE_VERSION_MAJOR);
 if (ret) {
  kfree_skb(skb);
  return ret;
 }

 ret = nla_put_u32(skb, ATH10K_TM_ATTR_VERSION_MINOR,
     ATH10K_TESTMODE_VERSION_MINOR);
 if (ret) {
  kfree_skb(skb);
  return ret;
 }

 ret = nla_put_u32(skb, ATH10K_TM_ATTR_WMI_OP_VERSION,
     ar->normal_mode_fw.fw_file.wmi_op_version);
 if (ret) {
  kfree_skb(skb);
  return ret;
 }

 return cfg80211_testmode_reply(skb);
}
