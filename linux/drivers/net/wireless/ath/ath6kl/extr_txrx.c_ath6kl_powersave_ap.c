
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int h_dest; } ;
struct ath6kl_vif {int fw_vif_idx; int flags; struct ath6kl* ar; } ;
struct ath6kl_sta {int sta_flags; } ;
struct ath6kl {int mcastpsq_lock; int mcastpsq; int wmi; TYPE_1__* sta_list; } ;
struct TYPE_2__ {int sta_flags; } ;


 size_t AP_MAX_NUM_STA ;
 int DTIM_EXPIRED ;
 int MCAST_AID ;
 int STA_PS_SLEEP ;
 int WMI_DATA_HDR_FLAGS_MORE ;
 int WMI_DATA_HDR_FLAGS_UAPSD ;
 struct ath6kl_sta* ath6kl_find_sta (struct ath6kl_vif*,int ) ;
 int ath6kl_process_psq (struct ath6kl_sta*,struct ath6kl_vif*,struct sk_buff*,int*) ;
 int ath6kl_process_uapsdq (struct ath6kl_sta*,struct ath6kl_vif*,struct sk_buff*,int*) ;
 int ath6kl_wmi_set_pvb_cmd (int ,int ,int ,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int skb_queue_empty (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool ath6kl_powersave_ap(struct ath6kl_vif *vif, struct sk_buff *skb,
    u32 *flags)
{
 struct ethhdr *datap = (struct ethhdr *) skb->data;
 struct ath6kl_sta *conn = ((void*)0);
 bool ps_queued = 0;
 struct ath6kl *ar = vif->ar;

 if (is_multicast_ether_addr(datap->h_dest)) {
  u8 ctr = 0;
  bool q_mcast = 0;

  for (ctr = 0; ctr < AP_MAX_NUM_STA; ctr++) {
   if (ar->sta_list[ctr].sta_flags & STA_PS_SLEEP) {
    q_mcast = 1;
    break;
   }
  }

  if (q_mcast) {




   if (!test_bit(DTIM_EXPIRED, &vif->flags)) {
    bool is_mcastq_empty = 0;

    spin_lock_bh(&ar->mcastpsq_lock);
    is_mcastq_empty =
     skb_queue_empty(&ar->mcastpsq);
    skb_queue_tail(&ar->mcastpsq, skb);
    spin_unlock_bh(&ar->mcastpsq_lock);






    if (is_mcastq_empty)
     ath6kl_wmi_set_pvb_cmd(ar->wmi,
              vif->fw_vif_idx,
              MCAST_AID, 1);

    ps_queued = 1;
   } else {




    spin_lock_bh(&ar->mcastpsq_lock);
    if (!skb_queue_empty(&ar->mcastpsq))
     *flags |= WMI_DATA_HDR_FLAGS_MORE;
    spin_unlock_bh(&ar->mcastpsq_lock);
   }
  }
 } else {
  conn = ath6kl_find_sta(vif, datap->h_dest);
  if (!conn) {
   dev_kfree_skb(skb);


   return 1;
  }

  if (conn->sta_flags & STA_PS_SLEEP) {
   ps_queued = ath6kl_process_uapsdq(conn,
      vif, skb, flags);
   if (!(*flags & WMI_DATA_HDR_FLAGS_UAPSD))
    ps_queued = ath6kl_process_psq(conn,
      vif, skb, flags);
  }
 }
 return ps_queued;
}
