
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct htc_target {int tx_lock; int cred_dist_list; int credit_info; } ;
struct TYPE_4__ {scalar_t__ cred_used; } ;
struct TYPE_5__ {TYPE_1__ tx; } ;
struct htc_packet {TYPE_2__ info; int act_len; int endpoint; int status; int buf; int * completion; } ;
struct TYPE_6__ {int txq_depth; int cred_to_dist; } ;
struct htc_endpoint {int txq; TYPE_3__ cred_dist; } ;


 int ATH6KL_DBG_HTC ;
 int HTC_CREDIT_DIST_SEND_COMPLETE ;
 scalar_t__ HTC_HDR_LENGTH ;
 int ath6kl_credit_distribute (int ,int *,int ) ;
 int ath6kl_dbg (int ,char*,int ,int *) ;
 int ath6kl_err (char*,int ,int ,int ,scalar_t__) ;
 int get_queue_depth (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void htc_tx_comp_update(struct htc_target *target,
          struct htc_endpoint *endpoint,
          struct htc_packet *packet)
{
 packet->completion = ((void*)0);
 packet->buf += HTC_HDR_LENGTH;

 if (!packet->status)
  return;

 ath6kl_err("req failed (status:%d, ep:%d, len:%d creds:%d)\n",
     packet->status, packet->endpoint, packet->act_len,
     packet->info.tx.cred_used);


 spin_lock_bh(&target->tx_lock);
 endpoint->cred_dist.cred_to_dist +=
    packet->info.tx.cred_used;
 endpoint->cred_dist.txq_depth = get_queue_depth(&endpoint->txq);

 ath6kl_dbg(ATH6KL_DBG_HTC, "htc tx ctxt 0x%p dist 0x%p\n",
     target->credit_info, &target->cred_dist_list);

 ath6kl_credit_distribute(target->credit_info,
     &target->cred_dist_list,
     HTC_CREDIT_DIST_SEND_COMPLETE);

 spin_unlock_bh(&target->tx_lock);
}
