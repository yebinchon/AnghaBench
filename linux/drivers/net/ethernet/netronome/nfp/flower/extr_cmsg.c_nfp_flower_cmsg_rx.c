
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_flower_cmsg_hdr {scalar_t__ version; scalar_t__ type; } ;
struct nfp_app {int dummy; } ;


 scalar_t__ NFP_FLOWER_CMSG_TYPE_FLOW_STATS ;
 scalar_t__ NFP_FLOWER_CMSG_TYPE_PORT_MOD ;
 scalar_t__ NFP_FLOWER_CMSG_TYPE_PORT_REIFY ;
 scalar_t__ NFP_FLOWER_CMSG_TYPE_TUN_NEIGH ;
 scalar_t__ NFP_FLOWER_CMSG_VER1 ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct nfp_flower_cmsg_hdr* nfp_flower_cmsg_get_hdr (struct sk_buff*) ;
 int nfp_flower_cmsg_portreify_rx (struct nfp_app*,struct sk_buff*) ;
 int nfp_flower_cmsg_warn (struct nfp_app*,char*,scalar_t__) ;
 scalar_t__ nfp_flower_process_mtu_ack (struct nfp_app*,struct sk_buff*) ;
 int nfp_flower_queue_ctl_msg (struct nfp_app*,struct sk_buff*,scalar_t__) ;
 int nfp_flower_rx_flow_stats (struct nfp_app*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

void nfp_flower_cmsg_rx(struct nfp_app *app, struct sk_buff *skb)
{
 struct nfp_flower_cmsg_hdr *cmsg_hdr;

 cmsg_hdr = nfp_flower_cmsg_get_hdr(skb);

 if (unlikely(cmsg_hdr->version != NFP_FLOWER_CMSG_VER1)) {
  nfp_flower_cmsg_warn(app, "Cannot handle repr control version %u\n",
         cmsg_hdr->version);
  dev_kfree_skb_any(skb);
  return;
 }

 if (cmsg_hdr->type == NFP_FLOWER_CMSG_TYPE_FLOW_STATS) {

  nfp_flower_rx_flow_stats(app, skb);
  dev_consume_skb_any(skb);
 } else if (cmsg_hdr->type == NFP_FLOWER_CMSG_TYPE_PORT_MOD &&
     nfp_flower_process_mtu_ack(app, skb)) {

  dev_consume_skb_any(skb);
 } else if (cmsg_hdr->type == NFP_FLOWER_CMSG_TYPE_TUN_NEIGH) {

  dev_consume_skb_any(skb);
 } else if (cmsg_hdr->type == NFP_FLOWER_CMSG_TYPE_PORT_REIFY) {

  nfp_flower_cmsg_portreify_rx(app, skb);
  dev_consume_skb_any(skb);
 } else {
  nfp_flower_queue_ctl_msg(app, skb, cmsg_hdr->type);
 }
}
