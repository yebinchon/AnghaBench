
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ath6kl_vif {int fw_vif_idx; int ndev; struct ath6kl* ar; } ;
struct ath6kl_sta {int apsd_info; int aid; int sta_flags; int psq_lock; int apsdq; } ;
struct ath6kl {int wmi; } ;


 int ATH6KL_APSD_ALL_FRAME ;
 int ATH6KL_APSD_FRAME_MASK ;
 int ATH6KL_APSD_NUM_OF_AC ;
 int STA_PS_APSD_EOSP ;
 int STA_PS_APSD_TRIGGER ;
 int WMI_AP_APSD_NO_DELIVERY_FRAMES ;
 int ath6kl_data_tx (struct sk_buff*,int ) ;
 int ath6kl_wmi_set_apsd_bfrd_traf (int ,int ,int ,int ,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath6kl_uapsd_trigger_frame_rx(struct ath6kl_vif *vif,
       struct ath6kl_sta *conn)
{
 struct ath6kl *ar = vif->ar;
 bool is_apsdq_empty, is_apsdq_empty_at_start;
 u32 num_frames_to_deliver, flags;
 struct sk_buff *skb = ((void*)0);
 num_frames_to_deliver = (conn->apsd_info >> ATH6KL_APSD_NUM_OF_AC) &
          ATH6KL_APSD_FRAME_MASK;






 if (!num_frames_to_deliver)
  num_frames_to_deliver = ATH6KL_APSD_ALL_FRAME;

 spin_lock_bh(&conn->psq_lock);
 is_apsdq_empty = skb_queue_empty(&conn->apsdq);
 spin_unlock_bh(&conn->psq_lock);
 is_apsdq_empty_at_start = is_apsdq_empty;

 while ((!is_apsdq_empty) && (num_frames_to_deliver)) {
  spin_lock_bh(&conn->psq_lock);
  skb = skb_dequeue(&conn->apsdq);
  is_apsdq_empty = skb_queue_empty(&conn->apsdq);
  spin_unlock_bh(&conn->psq_lock);





  conn->sta_flags |= STA_PS_APSD_TRIGGER;
  num_frames_to_deliver--;


  if ((is_apsdq_empty) || (!num_frames_to_deliver))
   conn->sta_flags |= STA_PS_APSD_EOSP;

  ath6kl_data_tx(skb, vif->ndev);
  conn->sta_flags &= ~(STA_PS_APSD_TRIGGER);
  conn->sta_flags &= ~(STA_PS_APSD_EOSP);
 }

 if (is_apsdq_empty) {
  if (is_apsdq_empty_at_start)
   flags = WMI_AP_APSD_NO_DELIVERY_FRAMES;
  else
   flags = 0;

  ath6kl_wmi_set_apsd_bfrd_traf(ar->wmi,
           vif->fw_vif_idx,
           conn->aid, 0, flags);
 }

 return;
}
