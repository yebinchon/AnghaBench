
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {size_t* data; } ;
struct htc_target {struct htc_endpoint* endpoint; } ;
struct htc_packet {scalar_t__ status; } ;
struct htc_frame_hdr {size_t eid; } ;
struct TYPE_2__ {int tx_credit_flow_enabled; } ;
struct htc_endpoint {TYPE_1__ pipe; } ;
struct ath6kl {struct htc_target* htc_target; } ;


 int ath6kl_err (char*) ;
 struct htc_packet* htc_lookup_tx_packet (struct htc_target*,struct htc_endpoint*,struct sk_buff*) ;
 int htc_try_send (struct htc_target*,struct htc_endpoint*,int *) ;
 int send_packet_completion (struct htc_target*,struct htc_packet*) ;

__attribute__((used)) static int ath6kl_htc_pipe_tx_complete(struct ath6kl *ar, struct sk_buff *skb)
{
 struct htc_target *target = ar->htc_target;
 struct htc_frame_hdr *htc_hdr;
 struct htc_endpoint *ep;
 struct htc_packet *packet;
 u8 ep_id, *netdata;

 netdata = skb->data;

 htc_hdr = (struct htc_frame_hdr *) netdata;

 ep_id = htc_hdr->eid;
 ep = &target->endpoint[ep_id];

 packet = htc_lookup_tx_packet(target, ep, skb);
 if (packet == ((void*)0)) {

  ath6kl_err("HTC TX lookup failed!\n");
 } else {

  packet->status = 0;
  send_packet_completion(target, packet);
 }
 skb = ((void*)0);

 if (!ep->pipe.tx_credit_flow_enabled) {





  htc_try_send(target, ep, ((void*)0));
 }

 return 0;
}
