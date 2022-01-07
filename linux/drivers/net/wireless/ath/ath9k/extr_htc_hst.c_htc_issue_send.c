
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct htc_target {int hif_dev; TYPE_1__* hif; struct htc_endpoint* endpoint; } ;
struct htc_frame_hdr {size_t endpoint_id; size_t flags; int payload_len; } ;
struct htc_endpoint {int ul_pipeid; } ;
struct TYPE_2__ {int (* send ) (int ,int ,struct sk_buff*) ;} ;


 int cpu_to_be16 (int ) ;
 struct htc_frame_hdr* skb_push (struct sk_buff*,int) ;
 int stub1 (int ,int ,struct sk_buff*) ;

__attribute__((used)) static int htc_issue_send(struct htc_target *target, struct sk_buff* skb,
     u16 len, u8 flags, u8 epid)

{
 struct htc_frame_hdr *hdr;
 struct htc_endpoint *endpoint = &target->endpoint[epid];
 int status;

 hdr = skb_push(skb, sizeof(struct htc_frame_hdr));
 hdr->endpoint_id = epid;
 hdr->flags = flags;
 hdr->payload_len = cpu_to_be16(len);

 status = target->hif->send(target->hif_dev, endpoint->ul_pipeid, skb);

 return status;
}
