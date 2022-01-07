
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct htt_rx_indication_mpdu_range {int mpdu_count; } ;
struct ath10k_sta {int * tid_stats; } ;
struct ath10k_peer {TYPE_1__* sta; } ;
struct ath10k {int sta_tid_stats_mask; int data_lock; } ;
struct TYPE_2__ {scalar_t__ drv_priv; } ;


 int BIT (size_t) ;
 size_t IEEE80211_NUM_TIDS ;
 struct ath10k_peer* ath10k_peer_find_by_id (struct ath10k*,int ) ;
 int ath10k_rx_stats_update_ampdu_subfrm (struct ath10k*,int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath10k_sta_update_rx_tid_stats_ampdu(struct ath10k *ar, u16 peer_id, u8 tid,
       struct htt_rx_indication_mpdu_range *ranges,
       int num_ranges)
{
 struct ath10k_sta *arsta;
 struct ath10k_peer *peer;
 int i;

 if (tid > IEEE80211_NUM_TIDS || !(ar->sta_tid_stats_mask & BIT(tid)))
  return;

 rcu_read_lock();
 spin_lock_bh(&ar->data_lock);

 peer = ath10k_peer_find_by_id(ar, peer_id);
 if (!peer || !peer->sta)
  goto out;

 arsta = (struct ath10k_sta *)peer->sta->drv_priv;

 for (i = 0; i < num_ranges; i++)
  ath10k_rx_stats_update_ampdu_subfrm(ar,
          &arsta->tid_stats[tid],
          ranges[i].mpdu_count);

out:
 spin_unlock_bh(&ar->data_lock);
 rcu_read_unlock();
}
