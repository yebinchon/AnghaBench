
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ice_32b_rx_flex_desc {int dummy; } ice_32b_rx_flex_desc ;
typedef int u8 ;
struct sk_buff {int protocol; } ;
struct ice_ring {int netdev; } ;


 int eth_type_trans (struct sk_buff*,int ) ;
 int ice_rx_csum (struct ice_ring*,struct sk_buff*,union ice_32b_rx_flex_desc*,int ) ;
 int ice_rx_hash (struct ice_ring*,union ice_32b_rx_flex_desc*,struct sk_buff*,int ) ;

__attribute__((used)) static void
ice_process_skb_fields(struct ice_ring *rx_ring,
         union ice_32b_rx_flex_desc *rx_desc,
         struct sk_buff *skb, u8 ptype)
{
 ice_rx_hash(rx_ring, rx_desc, skb, ptype);


 skb->protocol = eth_type_trans(skb, rx_ring->netdev);

 ice_rx_csum(rx_ring, skb, rx_desc, ptype);
}
