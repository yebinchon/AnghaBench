
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct ath10k_vif {int beacon_state; int vdev_id; struct ath10k* ar; struct sk_buff* beacon; } ;
struct ath10k_skb_cb {int flags; int paddr; } ;
struct ath10k {int data_lock; } ;





 struct ath10k_skb_cb* ATH10K_SKB_CB (struct sk_buff*) ;
 int ATH10K_SKB_F_DELIVER_CAB ;
 int ATH10K_SKB_F_DTIM_ZERO ;
 int ath10k_wmi_beacon_send_ref_nowait (struct ath10k*,int ,int ,int ,int ,int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath10k_wmi_tx_beacon_nowait(struct ath10k_vif *arvif)
{
 struct ath10k *ar = arvif->ar;
 struct ath10k_skb_cb *cb;
 struct sk_buff *bcn;
 bool dtim_zero;
 bool deliver_cab;
 int ret;

 spin_lock_bh(&ar->data_lock);

 bcn = arvif->beacon;

 if (!bcn)
  goto unlock;

 cb = ATH10K_SKB_CB(bcn);

 switch (arvif->beacon_state) {
 case 129:
 case 128:
  break;
 case 130:
  arvif->beacon_state = 129;
  spin_unlock_bh(&ar->data_lock);

  dtim_zero = !!(cb->flags & ATH10K_SKB_F_DTIM_ZERO);
  deliver_cab = !!(cb->flags & ATH10K_SKB_F_DELIVER_CAB);
  ret = ath10k_wmi_beacon_send_ref_nowait(arvif->ar,
       arvif->vdev_id,
       bcn->data, bcn->len,
       cb->paddr,
       dtim_zero,
       deliver_cab);

  spin_lock_bh(&ar->data_lock);

  if (ret == 0)
   arvif->beacon_state = 128;
  else
   arvif->beacon_state = 130;
 }

unlock:
 spin_unlock_bh(&ar->data_lock);
}
