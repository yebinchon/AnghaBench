
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ath6kl_vif {int fw_vif_idx; struct ath6kl* ar; } ;
struct ath6kl_sta {int sta_flags; int aid; int psq_lock; int psq; } ;
struct ath6kl {int wmi; } ;


 int STA_PS_POLLED ;
 int WMI_DATA_HDR_FLAGS_MORE ;
 int ath6kl_wmi_set_pvb_cmd (int ,int ,int ,int) ;
 int skb_queue_empty (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool ath6kl_process_psq(struct ath6kl_sta *conn,
    struct ath6kl_vif *vif,
    struct sk_buff *skb,
    u32 *flags)
{
 bool is_psq_empty = 0;
 struct ath6kl *ar = vif->ar;

 if (conn->sta_flags & STA_PS_POLLED) {
  spin_lock_bh(&conn->psq_lock);
  if (!skb_queue_empty(&conn->psq))
   *flags |= WMI_DATA_HDR_FLAGS_MORE;
  spin_unlock_bh(&conn->psq_lock);
  return 0;
 }


 spin_lock_bh(&conn->psq_lock);
 is_psq_empty = skb_queue_empty(&conn->psq);
 skb_queue_tail(&conn->psq, skb);
 spin_unlock_bh(&conn->psq_lock);






 if (is_psq_empty)
  ath6kl_wmi_set_pvb_cmd(ar->wmi,
           vif->fw_vif_idx,
           conn->aid, 1);
 return 1;
}
