
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int ip_summed; int dev; } ;
struct rmnet_port {int data_format; } ;
struct rmnet_map_header {int dummy; } ;
struct rmnet_endpoint {int egress_dev; } ;


 int CHECKSUM_UNNECESSARY ;
 int RMNET_FLAGS_INGRESS_MAP_CKSUMV4 ;
 int RMNET_FLAGS_INGRESS_MAP_COMMANDS ;
 scalar_t__ RMNET_MAP_GET_CD_BIT (struct sk_buff*) ;
 scalar_t__ RMNET_MAP_GET_LENGTH (struct sk_buff*) ;
 scalar_t__ RMNET_MAP_GET_MUX_ID (struct sk_buff*) ;
 scalar_t__ RMNET_MAP_GET_PAD (struct sk_buff*) ;
 scalar_t__ RMNET_MAX_LOGICAL_EP ;
 int kfree_skb (struct sk_buff*) ;
 int rmnet_deliver_skb (struct sk_buff*) ;
 struct rmnet_endpoint* rmnet_get_endpoint (struct rmnet_port*,scalar_t__) ;
 int rmnet_map_checksum_downlink_packet (struct sk_buff*,scalar_t__) ;
 void rmnet_map_command (struct sk_buff*,struct rmnet_port*) ;
 int rmnet_set_skb_proto (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void
__rmnet_map_ingress_handler(struct sk_buff *skb,
       struct rmnet_port *port)
{
 struct rmnet_endpoint *ep;
 u16 len, pad;
 u8 mux_id;

 if (RMNET_MAP_GET_CD_BIT(skb)) {
  if (port->data_format & RMNET_FLAGS_INGRESS_MAP_COMMANDS)
   return rmnet_map_command(skb, port);

  goto free_skb;
 }

 mux_id = RMNET_MAP_GET_MUX_ID(skb);
 pad = RMNET_MAP_GET_PAD(skb);
 len = RMNET_MAP_GET_LENGTH(skb) - pad;

 if (mux_id >= RMNET_MAX_LOGICAL_EP)
  goto free_skb;

 ep = rmnet_get_endpoint(port, mux_id);
 if (!ep)
  goto free_skb;

 skb->dev = ep->egress_dev;


 skb_pull(skb, sizeof(struct rmnet_map_header));
 rmnet_set_skb_proto(skb);

 if (port->data_format & RMNET_FLAGS_INGRESS_MAP_CKSUMV4) {
  if (!rmnet_map_checksum_downlink_packet(skb, len + pad))
   skb->ip_summed = CHECKSUM_UNNECESSARY;
 }

 skb_trim(skb, len);
 rmnet_deliver_skb(skb);
 return;

free_skb:
 kfree_skb(skb);
}
