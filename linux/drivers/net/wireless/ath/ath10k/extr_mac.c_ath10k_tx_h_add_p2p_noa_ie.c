
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ieee80211_vif {scalar_t__ type; int p2p; scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_3__ {int noa_len; scalar_t__ noa_data; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;
struct ath10k_vif {TYPE_2__ u; } ;
struct ath10k {int data_lock; } ;


 int GFP_ATOMIC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int ieee80211_is_probe_resp (int ) ;
 int pskb_expand_head (struct sk_buff*,int ,int ,int ) ;
 int skb_put_data (struct sk_buff*,scalar_t__,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ath10k_tx_h_add_p2p_noa_ie(struct ath10k *ar,
           struct ieee80211_vif *vif,
           struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;


 if (vif->type != NL80211_IFTYPE_AP || !vif->p2p)
  return;

 if (unlikely(ieee80211_is_probe_resp(hdr->frame_control))) {
  spin_lock_bh(&ar->data_lock);
  if (arvif->u.ap.noa_data)
   if (!pskb_expand_head(skb, 0, arvif->u.ap.noa_len,
           GFP_ATOMIC))
    skb_put_data(skb, arvif->u.ap.noa_data,
          arvif->u.ap.noa_len);
  spin_unlock_bh(&ar->data_lock);
 }
}
