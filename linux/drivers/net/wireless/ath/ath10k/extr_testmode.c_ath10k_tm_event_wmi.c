
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int data; scalar_t__ len; } ;
struct TYPE_3__ {int utf_monitor; } ;
struct ath10k {int data_lock; TYPE_2__* hw; TYPE_1__ testmode; } ;
struct TYPE_4__ {int wiphy; } ;


 int ATH10K_DBG_TESTMODE ;
 int ATH10K_TM_ATTR_CMD ;
 int ATH10K_TM_ATTR_DATA ;
 int ATH10K_TM_ATTR_WMI_CMDID ;
 int ATH10K_TM_CMD_WMI ;
 int GFP_ATOMIC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,struct sk_buff*,scalar_t__) ;
 int ath10k_dbg_dump (struct ath10k*,int ,int *,char*,int ,scalar_t__) ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 struct sk_buff* cfg80211_testmode_alloc_event_skb (int ,scalar_t__,int ) ;
 int cfg80211_testmode_event (struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nla_put (struct sk_buff*,int ,scalar_t__,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

bool ath10k_tm_event_wmi(struct ath10k *ar, u32 cmd_id, struct sk_buff *skb)
{
 struct sk_buff *nl_skb;
 bool consumed;
 int ret;

 ath10k_dbg(ar, ATH10K_DBG_TESTMODE,
     "testmode event wmi cmd_id %d skb %pK skb->len %d\n",
     cmd_id, skb, skb->len);

 ath10k_dbg_dump(ar, ATH10K_DBG_TESTMODE, ((void*)0), "", skb->data, skb->len);

 spin_lock_bh(&ar->data_lock);

 if (!ar->testmode.utf_monitor) {
  consumed = 0;
  goto out;
 }





 consumed = 1;

 nl_skb = cfg80211_testmode_alloc_event_skb(ar->hw->wiphy,
         2 * sizeof(u32) + skb->len,
         GFP_ATOMIC);
 if (!nl_skb) {
  ath10k_warn(ar,
       "failed to allocate skb for testmode wmi event\n");
  goto out;
 }

 ret = nla_put_u32(nl_skb, ATH10K_TM_ATTR_CMD, ATH10K_TM_CMD_WMI);
 if (ret) {
  ath10k_warn(ar,
       "failed to to put testmode wmi event cmd attribute: %d\n",
       ret);
  kfree_skb(nl_skb);
  goto out;
 }

 ret = nla_put_u32(nl_skb, ATH10K_TM_ATTR_WMI_CMDID, cmd_id);
 if (ret) {
  ath10k_warn(ar,
       "failed to to put testmode wmi even cmd_id: %d\n",
       ret);
  kfree_skb(nl_skb);
  goto out;
 }

 ret = nla_put(nl_skb, ATH10K_TM_ATTR_DATA, skb->len, skb->data);
 if (ret) {
  ath10k_warn(ar,
       "failed to copy skb to testmode wmi event: %d\n",
       ret);
  kfree_skb(nl_skb);
  goto out;
 }

 cfg80211_testmode_event(nl_skb, GFP_ATOMIC);

out:
 spin_unlock_bh(&ar->data_lock);

 return consumed;
}
