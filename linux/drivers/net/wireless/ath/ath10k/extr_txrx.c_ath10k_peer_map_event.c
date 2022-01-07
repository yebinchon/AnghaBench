
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htt_peer_map_event {size_t peer_id; int addr; int vdev_id; } ;
struct ath10k_peer {int peer_ids; int list; int addr; int vdev_id; } ;
struct ath10k_htt {struct ath10k* ar; } ;
struct ath10k {int data_lock; struct ath10k_peer** peer_map; int peer_mapping_wq; int peers; } ;


 int ATH10K_DBG_HTT ;
 size_t ATH10K_MAX_NUM_PEER_IDS ;
 int GFP_ATOMIC ;
 int WARN_ON (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,size_t) ;
 struct ath10k_peer* ath10k_peer_find (struct ath10k*,int ,int ) ;
 int ath10k_warn (struct ath10k*,char*,size_t) ;
 int ether_addr_copy (int ,int ) ;
 struct ath10k_peer* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int set_bit (size_t,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up (int *) ;

void ath10k_peer_map_event(struct ath10k_htt *htt,
      struct htt_peer_map_event *ev)
{
 struct ath10k *ar = htt->ar;
 struct ath10k_peer *peer;

 if (ev->peer_id >= ATH10K_MAX_NUM_PEER_IDS) {
  ath10k_warn(ar,
       "received htt peer map event with idx out of bounds: %hu\n",
       ev->peer_id);
  return;
 }

 spin_lock_bh(&ar->data_lock);
 peer = ath10k_peer_find(ar, ev->vdev_id, ev->addr);
 if (!peer) {
  peer = kzalloc(sizeof(*peer), GFP_ATOMIC);
  if (!peer)
   goto exit;

  peer->vdev_id = ev->vdev_id;
  ether_addr_copy(peer->addr, ev->addr);
  list_add(&peer->list, &ar->peers);
  wake_up(&ar->peer_mapping_wq);
 }

 ath10k_dbg(ar, ATH10K_DBG_HTT, "htt peer map vdev %d peer %pM id %d\n",
     ev->vdev_id, ev->addr, ev->peer_id);

 WARN_ON(ar->peer_map[ev->peer_id] && (ar->peer_map[ev->peer_id] != peer));
 ar->peer_map[ev->peer_id] = peer;
 set_bit(ev->peer_id, peer->peer_ids);
exit:
 spin_unlock_bh(&ar->data_lock);
}
