
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct htc_target {int htc_flags; struct htc_endpoint* endpoint; int cmd_wait; } ;
struct htc_frame_hdr {size_t endpoint_id; } ;
struct TYPE_2__ {int priv; int (* tx ) (int ,struct sk_buff*,size_t,int) ;} ;
struct htc_endpoint {TYPE_1__ ep_callbacks; } ;


 int HTC_OP_CONFIG_PIPE_CREDITS ;
 int HTC_OP_START_WAIT ;
 int complete (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int stub1 (int ,struct sk_buff*,size_t,int) ;

void ath9k_htc_txcompletion_cb(struct htc_target *htc_handle,
          struct sk_buff *skb, bool txok)
{
 struct htc_endpoint *endpoint;
 struct htc_frame_hdr *htc_hdr = ((void*)0);

 if (htc_handle->htc_flags & HTC_OP_CONFIG_PIPE_CREDITS) {
  complete(&htc_handle->cmd_wait);
  htc_handle->htc_flags &= ~HTC_OP_CONFIG_PIPE_CREDITS;
  goto ret;
 }

 if (htc_handle->htc_flags & HTC_OP_START_WAIT) {
  complete(&htc_handle->cmd_wait);
  htc_handle->htc_flags &= ~HTC_OP_START_WAIT;
  goto ret;
 }

 if (skb) {
  htc_hdr = (struct htc_frame_hdr *) skb->data;
  endpoint = &htc_handle->endpoint[htc_hdr->endpoint_id];
  skb_pull(skb, sizeof(struct htc_frame_hdr));

  if (endpoint->ep_callbacks.tx) {
   endpoint->ep_callbacks.tx(endpoint->ep_callbacks.priv,
        skb, htc_hdr->endpoint_id,
        txok);
  } else {
   kfree_skb(skb);
  }
 }

 return;
ret:
 kfree_skb(skb);
}
