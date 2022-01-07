
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union igc_adv_rx_desc {int dummy; } igc_adv_rx_desc ;
struct sk_buff {int protocol; } ;
struct igc_ring {int netdev; int queue_index; } ;


 int eth_type_trans (struct sk_buff*,int ) ;
 int igc_rx_hash (struct igc_ring*,union igc_adv_rx_desc*,struct sk_buff*) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;

__attribute__((used)) static void igc_process_skb_fields(struct igc_ring *rx_ring,
       union igc_adv_rx_desc *rx_desc,
       struct sk_buff *skb)
{
 igc_rx_hash(rx_ring, rx_desc, skb);

 skb_record_rx_queue(skb, rx_ring->queue_index);

 skb->protocol = eth_type_trans(skb, rx_ring->netdev);
}
