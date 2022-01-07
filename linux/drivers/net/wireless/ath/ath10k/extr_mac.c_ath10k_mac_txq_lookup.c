
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
struct ieee80211_txq {int dummy; } ;
struct ath10k_peer {TYPE_2__* vif; TYPE_1__* sta; scalar_t__ removed; } ;
struct ath10k {struct ath10k_peer** peer_map; int data_lock; } ;
struct TYPE_4__ {struct ieee80211_txq* txq; } ;
struct TYPE_3__ {struct ieee80211_txq** txq; } ;


 int lockdep_assert_held (int *) ;

struct ieee80211_txq *ath10k_mac_txq_lookup(struct ath10k *ar,
         u16 peer_id,
         u8 tid)
{
 struct ath10k_peer *peer;

 lockdep_assert_held(&ar->data_lock);

 peer = ar->peer_map[peer_id];
 if (!peer)
  return ((void*)0);

 if (peer->removed)
  return ((void*)0);

 if (peer->sta)
  return peer->sta->txq[tid];
 else if (peer->vif)
  return peer->vif->txq;
 else
  return ((void*)0);
}
