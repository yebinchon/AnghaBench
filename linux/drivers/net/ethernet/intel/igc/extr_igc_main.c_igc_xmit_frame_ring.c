
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int len; } ;
struct igc_tx_buffer {int gso_segs; int protocol; int tx_flags; int bytecount; struct sk_buff* skb; } ;
struct igc_ring {size_t next_to_use; struct igc_tx_buffer* tx_buffer_info; } ;
typedef int netdev_tx_t ;
typedef int __be16 ;
struct TYPE_2__ {unsigned short nr_frags; int * frags; } ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ TXD_USE_COUNT (int ) ;
 scalar_t__ igc_maybe_stop_tx (struct igc_ring*,scalar_t__) ;
 int igc_tx_csum (struct igc_ring*,struct igc_tx_buffer*) ;
 int igc_tx_map (struct igc_ring*,struct igc_tx_buffer*,int ) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int vlan_get_protocol (struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
           struct igc_ring *tx_ring)
{
 u16 count = TXD_USE_COUNT(skb_headlen(skb));
 __be16 protocol = vlan_get_protocol(skb);
 struct igc_tx_buffer *first;
 u32 tx_flags = 0;
 unsigned short f;
 u8 hdr_len = 0;







 for (f = 0; f < skb_shinfo(skb)->nr_frags; f++)
  count += TXD_USE_COUNT(skb_frag_size(
      &skb_shinfo(skb)->frags[f]));

 if (igc_maybe_stop_tx(tx_ring, count + 3)) {

  return NETDEV_TX_BUSY;
 }


 first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
 first->skb = skb;
 first->bytecount = skb->len;
 first->gso_segs = 1;


 first->tx_flags = tx_flags;
 first->protocol = protocol;

 igc_tx_csum(tx_ring, first);

 igc_tx_map(tx_ring, first, hdr_len);

 return NETDEV_TX_OK;
}
