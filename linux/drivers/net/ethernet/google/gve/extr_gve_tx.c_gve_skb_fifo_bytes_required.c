
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct gve_tx_ring {int tx_fifo; } ;


 int L1_CACHE_ALIGN (int) ;
 int gve_tx_fifo_pad_alloc_one_frag (int *,int) ;
 int skb_checksum_start_offset (struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 int tcp_hdrlen (struct sk_buff*) ;

__attribute__((used)) static inline int gve_skb_fifo_bytes_required(struct gve_tx_ring *tx,
           struct sk_buff *skb)
{
 int pad_bytes, align_hdr_pad;
 int bytes;
 int hlen;

 hlen = skb_is_gso(skb) ? skb_checksum_start_offset(skb) +
     tcp_hdrlen(skb) : skb_headlen(skb);

 pad_bytes = gve_tx_fifo_pad_alloc_one_frag(&tx->tx_fifo,
         hlen);

 align_hdr_pad = L1_CACHE_ALIGN(hlen) - hlen;
 bytes = align_hdr_pad + pad_bytes + skb->len;

 return bytes;
}
