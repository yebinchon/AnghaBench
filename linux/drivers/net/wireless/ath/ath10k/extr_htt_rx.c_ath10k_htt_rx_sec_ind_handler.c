
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htt_security_indication {int flags; int peer_id; } ;
struct ath10k_peer {int tids_last_pn; int tids_last_pn_valid; TYPE_1__* rx_pn; } ;
struct ath10k {int data_lock; } ;
typedef enum htt_txrx_sec_cast_type { ____Placeholder_htt_txrx_sec_cast_type } htt_txrx_sec_cast_type ;
typedef enum htt_security_types { ____Placeholder_htt_security_types } htt_security_types ;
struct TYPE_2__ {int sec_type; int pn_len; } ;


 int HTT_SECURITY_IS_UNICAST ;
 int HTT_SECURITY_TYPE ;
 int HTT_TXRX_SEC_MCAST ;
 int HTT_TXRX_SEC_UCAST ;
 int MS (int,int ) ;
 int __le16_to_cpu (int ) ;
 int ath10k_htt_rx_pn_len (int) ;
 struct ath10k_peer* ath10k_peer_find_by_id (struct ath10k*,int ) ;
 int ath10k_warn (struct ath10k*,char*,int ) ;
 int memset (int ,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath10k_htt_rx_sec_ind_handler(struct ath10k *ar,
       struct htt_security_indication *ev)
{
 enum htt_txrx_sec_cast_type sec_index;
 enum htt_security_types sec_type;
 struct ath10k_peer *peer;

 spin_lock_bh(&ar->data_lock);

 peer = ath10k_peer_find_by_id(ar, __le16_to_cpu(ev->peer_id));
 if (!peer) {
  ath10k_warn(ar, "failed to find peer id %d for security indication",
       __le16_to_cpu(ev->peer_id));
  goto out;
 }

 sec_type = MS(ev->flags, HTT_SECURITY_TYPE);

 if (ev->flags & HTT_SECURITY_IS_UNICAST)
  sec_index = HTT_TXRX_SEC_UCAST;
 else
  sec_index = HTT_TXRX_SEC_MCAST;

 peer->rx_pn[sec_index].sec_type = sec_type;
 peer->rx_pn[sec_index].pn_len = ath10k_htt_rx_pn_len(sec_type);

 memset(peer->tids_last_pn_valid, 0, sizeof(peer->tids_last_pn_valid));
 memset(peer->tids_last_pn, 0, sizeof(peer->tids_last_pn));

out:
 spin_unlock_bh(&ar->data_lock);
}
