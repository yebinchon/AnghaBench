
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ipvl_port {int dummy; } ;
struct ethhdr {int h_dest; } ;
typedef int rx_handler_result_t ;


 int GFP_ATOMIC ;
 int RX_HANDLER_PASS ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 scalar_t__ ipvlan_external_frame (struct sk_buff*,struct ipvl_port*) ;
 int ipvlan_handle_mode_l3 (struct sk_buff**,struct ipvl_port*) ;
 int ipvlan_multicast_enqueue (struct ipvl_port*,struct sk_buff*,int) ;
 int ipvlan_skb_crossing_ns (struct sk_buff*,int *) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;

__attribute__((used)) static rx_handler_result_t ipvlan_handle_mode_l2(struct sk_buff **pskb,
       struct ipvl_port *port)
{
 struct sk_buff *skb = *pskb;
 struct ethhdr *eth = eth_hdr(skb);
 rx_handler_result_t ret = RX_HANDLER_PASS;

 if (is_multicast_ether_addr(eth->h_dest)) {
  if (ipvlan_external_frame(skb, port)) {
   struct sk_buff *nskb = skb_clone(skb, GFP_ATOMIC);







   if (nskb) {
    ipvlan_skb_crossing_ns(nskb, ((void*)0));
    ipvlan_multicast_enqueue(port, nskb, 0);
   }
  }
 } else {

  ret = ipvlan_handle_mode_l3(pskb, port);
 }

 return ret;
}
