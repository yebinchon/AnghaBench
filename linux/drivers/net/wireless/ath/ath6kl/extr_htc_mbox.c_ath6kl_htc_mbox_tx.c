
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct htc_target {int htc_flags; struct htc_endpoint* endpoint; } ;
struct htc_packet {size_t endpoint; int list; int status; int act_len; int buf; } ;
struct htc_endpoint {int dummy; } ;


 int ATH6KL_DBG_HTC ;
 int ECANCELED ;
 int EINVAL ;
 size_t ENDPOINT_MAX ;
 int ENOSPC ;
 int HTC_OP_STATE_STOPPING ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int WARN_ON (int) ;
 int ath6kl_dbg (int ,char*,size_t,int ,int ) ;
 int ath6kl_htc_tx_try (struct htc_target*,struct htc_endpoint*,struct htc_packet*) ;
 int htc_tx_complete (struct htc_endpoint*,struct list_head*) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static int ath6kl_htc_mbox_tx(struct htc_target *target,
         struct htc_packet *packet)
{
 struct htc_endpoint *endpoint;
 struct list_head queue;

 ath6kl_dbg(ATH6KL_DBG_HTC,
     "htc tx ep id %d buf 0x%p len %d\n",
     packet->endpoint, packet->buf, packet->act_len);

 if (packet->endpoint >= ENDPOINT_MAX) {
  WARN_ON(1);
  return -EINVAL;
 }

 endpoint = &target->endpoint[packet->endpoint];

 if (!ath6kl_htc_tx_try(target, endpoint, packet)) {
  packet->status = (target->htc_flags & HTC_OP_STATE_STOPPING) ?
     -ECANCELED : -ENOSPC;
  INIT_LIST_HEAD(&queue);
  list_add(&packet->list, &queue);
  htc_tx_complete(endpoint, &queue);
 }

 return 0;
}
