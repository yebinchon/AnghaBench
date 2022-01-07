
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct tcphdr {int doff; } ;
struct sk_buff {scalar_t__ ip_summed; unsigned char* data; scalar_t__ encapsulation; } ;
struct fm10k_tx_desc {int hdrlen; int mss; } ;
struct fm10k_tx_buffer {int bytecount; int gso_segs; int tx_flags; struct sk_buff* skb; } ;
struct fm10k_ring {TYPE_2__* netdev; int next_to_use; } ;
struct TYPE_4__ {int features; } ;
struct TYPE_3__ {int gso_size; int gso_segs; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 struct fm10k_tx_desc* FM10K_TX_DESC (struct fm10k_ring*,int ) ;
 int FM10K_TX_FLAGS_CSUM ;
 int NETIF_F_GSO_UDP_TUNNEL ;
 int cpu_to_le16 (int ) ;
 int fm10k_tx_encap_offload (struct sk_buff*) ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (TYPE_2__*,char*) ;
 unsigned char* skb_inner_transport_header (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 unsigned char* skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static int fm10k_tso(struct fm10k_ring *tx_ring,
       struct fm10k_tx_buffer *first)
{
 struct sk_buff *skb = first->skb;
 struct fm10k_tx_desc *tx_desc;
 unsigned char *th;
 u8 hdrlen;

 if (skb->ip_summed != CHECKSUM_PARTIAL)
  return 0;

 if (!skb_is_gso(skb))
  return 0;


 if (skb->encapsulation) {
  if (!fm10k_tx_encap_offload(skb))
   goto err_vxlan;
  th = skb_inner_transport_header(skb);
 } else {
  th = skb_transport_header(skb);
 }


 hdrlen = (th - skb->data) + (((struct tcphdr *)th)->doff << 2);

 first->tx_flags |= FM10K_TX_FLAGS_CSUM;


 first->gso_segs = skb_shinfo(skb)->gso_segs;
 first->bytecount += (first->gso_segs - 1) * hdrlen;


 tx_desc = FM10K_TX_DESC(tx_ring, tx_ring->next_to_use);
 tx_desc->hdrlen = hdrlen;
 tx_desc->mss = cpu_to_le16(skb_shinfo(skb)->gso_size);

 return 1;

err_vxlan:
 tx_ring->netdev->features &= ~NETIF_F_GSO_UDP_TUNNEL;
 if (net_ratelimit())
  netdev_err(tx_ring->netdev,
      "TSO requested for unsupported tunnel, disabling offload\n");
 return -1;
}
