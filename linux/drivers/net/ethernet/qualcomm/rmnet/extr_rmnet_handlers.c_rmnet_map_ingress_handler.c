
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; } ;
struct rmnet_port {int data_format; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ ARPHRD_ETHER ;
 int ETH_HLEN ;
 int GFP_ATOMIC ;
 int RMNET_FLAGS_INGRESS_DEAGGREGATION ;
 int __rmnet_map_ingress_handler (struct sk_buff*,struct rmnet_port*) ;
 int consume_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* rmnet_map_deaggregate (struct sk_buff*,struct rmnet_port*) ;
 int skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static void
rmnet_map_ingress_handler(struct sk_buff *skb,
     struct rmnet_port *port)
{
 struct sk_buff *skbn;

 if (skb->dev->type == ARPHRD_ETHER) {
  if (pskb_expand_head(skb, ETH_HLEN, 0, GFP_ATOMIC)) {
   kfree_skb(skb);
   return;
  }

  skb_push(skb, ETH_HLEN);
 }

 if (port->data_format & RMNET_FLAGS_INGRESS_DEAGGREGATION) {
  while ((skbn = rmnet_map_deaggregate(skb, port)) != ((void*)0))
   __rmnet_map_ingress_handler(skbn, port);

  consume_skb(skb);
 } else {
  __rmnet_map_ingress_handler(skb, port);
 }
}
