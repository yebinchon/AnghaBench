
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath6kl_vif {int fw_vif_idx; int flags; int ndev; struct ath6kl* ar; } ;
struct ath6kl {int wmi; int mcastpsq_lock; int mcastpsq; int sta_list_index; } ;


 int DTIM_EXPIRED ;
 int MCAST_AID ;
 int ath6kl_data_tx (struct sk_buff*,int ) ;
 int ath6kl_wmi_set_pvb_cmd (int ,int ,int ,int ) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath6kl_dtimexpiry_event(struct ath6kl_vif *vif)
{
 bool mcastq_empty = 0;
 struct sk_buff *skb;
 struct ath6kl *ar = vif->ar;
 if (!ar->sta_list_index)
  return;

 spin_lock_bh(&ar->mcastpsq_lock);
 mcastq_empty = skb_queue_empty(&ar->mcastpsq);
 spin_unlock_bh(&ar->mcastpsq_lock);

 if (mcastq_empty)
  return;


 set_bit(DTIM_EXPIRED, &vif->flags);

 spin_lock_bh(&ar->mcastpsq_lock);
 while ((skb = skb_dequeue(&ar->mcastpsq)) != ((void*)0)) {
  spin_unlock_bh(&ar->mcastpsq_lock);

  ath6kl_data_tx(skb, vif->ndev);

  spin_lock_bh(&ar->mcastpsq_lock);
 }
 spin_unlock_bh(&ar->mcastpsq_lock);

 clear_bit(DTIM_EXPIRED, &vif->flags);


 ath6kl_wmi_set_pvb_cmd(ar->wmi, vif->fw_vif_idx, MCAST_AID, 0);
}
