
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ath10k {int data_lock; int wmi_mgmt_tx_work; int hw; struct sk_buff_head wmi_mgmt_tx_queue; } ;


 scalar_t__ ATH10K_MAX_NUM_MGMT_PENDING ;
 int ENOSPC ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int ath10k_warn (struct ath10k*,char*) ;
 int ieee80211_queue_work (int ,int *) ;
 scalar_t__ skb_queue_len (struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath10k_mac_tx_wmi_mgmt(struct ath10k *ar, struct sk_buff *skb)
{
 struct sk_buff_head *q = &ar->wmi_mgmt_tx_queue;
 int ret = 0;

 spin_lock_bh(&ar->data_lock);

 if (skb_queue_len(q) == ATH10K_MAX_NUM_MGMT_PENDING) {
  ath10k_warn(ar, "wmi mgmt tx queue is full\n");
  ret = -ENOSPC;
  goto unlock;
 }

 __skb_queue_tail(q, skb);
 ieee80211_queue_work(ar->hw, &ar->wmi_mgmt_tx_work);

unlock:
 spin_unlock_bh(&ar->data_lock);

 return ret;
}
