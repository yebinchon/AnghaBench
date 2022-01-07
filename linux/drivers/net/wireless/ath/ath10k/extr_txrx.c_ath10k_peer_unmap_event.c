
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htt_peer_unmap_event {size_t peer_id; } ;
struct ath10k_peer {int list; int peer_ids; int addr; int vdev_id; } ;
struct ath10k_htt {struct ath10k* ar; } ;
struct ath10k {int data_lock; int peer_mapping_wq; int ** peer_map; } ;


 int ATH10K_DBG_HTT ;
 size_t ATH10K_MAX_NUM_PEER_IDS ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,size_t) ;
 struct ath10k_peer* ath10k_peer_find_by_id (struct ath10k*,size_t) ;
 int ath10k_warn (struct ath10k*,char*,size_t) ;
 scalar_t__ bitmap_empty (int ,size_t) ;
 int clear_bit (size_t,int ) ;
 int kfree (struct ath10k_peer*) ;
 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up (int *) ;

void ath10k_peer_unmap_event(struct ath10k_htt *htt,
        struct htt_peer_unmap_event *ev)
{
 struct ath10k *ar = htt->ar;
 struct ath10k_peer *peer;

 if (ev->peer_id >= ATH10K_MAX_NUM_PEER_IDS) {
  ath10k_warn(ar,
       "received htt peer unmap event with idx out of bounds: %hu\n",
       ev->peer_id);
  return;
 }

 spin_lock_bh(&ar->data_lock);
 peer = ath10k_peer_find_by_id(ar, ev->peer_id);
 if (!peer) {
  ath10k_warn(ar, "peer-unmap-event: unknown peer id %d\n",
       ev->peer_id);
  goto exit;
 }

 ath10k_dbg(ar, ATH10K_DBG_HTT, "htt peer unmap vdev %d peer %pM id %d\n",
     peer->vdev_id, peer->addr, ev->peer_id);

 ar->peer_map[ev->peer_id] = ((void*)0);
 clear_bit(ev->peer_id, peer->peer_ids);

 if (bitmap_empty(peer->peer_ids, ATH10K_MAX_NUM_PEER_IDS)) {
  list_del(&peer->list);
  kfree(peer);
  wake_up(&ar->peer_mapping_wq);
 }

exit:
 spin_unlock_bh(&ar->data_lock);
}
