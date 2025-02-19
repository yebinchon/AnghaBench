
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_htc_ep {int eid; int tx_credit_flow_enabled; struct ath10k_htc* htc; scalar_t__ max_tx_queue_depth; scalar_t__ max_ep_message_len; int service_id; } ;
struct ath10k_htc {struct ath10k_htc_ep* endpoint; } ;


 int ATH10K_HTC_EP_0 ;
 int ATH10K_HTC_EP_COUNT ;
 int ATH10K_HTC_SVC_ID_UNUSED ;

__attribute__((used)) static void ath10k_htc_reset_endpoint_states(struct ath10k_htc *htc)
{
 struct ath10k_htc_ep *ep;
 int i;

 for (i = ATH10K_HTC_EP_0; i < ATH10K_HTC_EP_COUNT; i++) {
  ep = &htc->endpoint[i];
  ep->service_id = ATH10K_HTC_SVC_ID_UNUSED;
  ep->max_ep_message_len = 0;
  ep->max_tx_queue_depth = 0;
  ep->eid = i;
  ep->htc = htc;
  ep->tx_credit_flow_enabled = 1;
 }
}
