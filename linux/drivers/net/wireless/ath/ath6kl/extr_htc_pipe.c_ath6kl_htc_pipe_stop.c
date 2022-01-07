
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_target {int htc_flags; struct htc_endpoint* endpoint; } ;
struct htc_endpoint {int dummy; } ;


 int ENDPOINT_MAX ;
 int HTC_OP_STATE_SETUP_COMPLETE ;
 int HTC_TX_PACKET_TAG_ALL ;
 int htc_flush_rx_queue (struct htc_target*,struct htc_endpoint*) ;
 int htc_flush_tx_endpoint (struct htc_target*,struct htc_endpoint*,int ) ;
 int reset_endpoint_states (struct htc_target*) ;

__attribute__((used)) static void ath6kl_htc_pipe_stop(struct htc_target *target)
{
 int i;
 struct htc_endpoint *ep;


 for (i = 0; i < ENDPOINT_MAX; i++) {
  ep = &target->endpoint[i];
  htc_flush_rx_queue(target, ep);
  htc_flush_tx_endpoint(target, ep, HTC_TX_PACKET_TAG_ALL);
 }

 reset_endpoint_states(target);
 target->htc_flags &= ~HTC_OP_STATE_SETUP_COMPLETE;
}
