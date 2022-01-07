
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iavf_rx_desc {int dummy; } iavf_rx_desc ;
typedef int u8 ;
struct sk_buff {int protocol; } ;
struct iavf_ring {int netdev; int queue_index; int vsi; } ;


 int eth_type_trans (struct sk_buff*,int ) ;
 int iavf_rx_checksum (int ,struct sk_buff*,union iavf_rx_desc*) ;
 int iavf_rx_hash (struct iavf_ring*,union iavf_rx_desc*,struct sk_buff*,int ) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;

__attribute__((used)) static inline
void iavf_process_skb_fields(struct iavf_ring *rx_ring,
        union iavf_rx_desc *rx_desc, struct sk_buff *skb,
        u8 rx_ptype)
{
 iavf_rx_hash(rx_ring, rx_desc, skb, rx_ptype);

 iavf_rx_checksum(rx_ring->vsi, skb, rx_desc);

 skb_record_rx_queue(skb, rx_ring->queue_index);


 skb->protocol = eth_type_trans(skb, rx_ring->netdev);
}
