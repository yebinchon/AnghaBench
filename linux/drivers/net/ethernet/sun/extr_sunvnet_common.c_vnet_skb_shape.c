
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; scalar_t__ protocol; int csum_offset; scalar_t__ ip_summed; int queue_mapping; int dev; } ;
struct ipv6hdr {scalar_t__ nexthdr; int daddr; int saddr; } ;
struct iphdr {scalar_t__ protocol; int daddr; int saddr; } ;
typedef int skb_frag_t ;
typedef scalar_t__ __wsum ;
typedef scalar_t__ __sum16 ;
struct TYPE_2__ {int nr_frags; int gso_type; int gso_size; int * frags; } ;


 scalar_t__ CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int ETH_ZLEN ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int VNET_PACKET_SKIP ;
 struct sk_buff* alloc_and_align_skb (int ,int) ;
 scalar_t__ csum_ipv6_magic (int *,int *,int,scalar_t__,scalar_t__) ;
 scalar_t__ csum_tcpudp_magic (int ,int ,int,scalar_t__,scalar_t__) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int skb_checksum_start_offset (struct sk_buff*) ;
 scalar_t__ skb_copy_and_csum_bits (struct sk_buff*,int,int,int,int ) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int ,int,int) ;
 int skb_frag_off (int *) ;
 int skb_headroom (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_set_mac_header (struct sk_buff*,int) ;
 int skb_set_network_header (struct sk_buff*,int) ;
 int skb_set_transport_header (struct sk_buff*,int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;
 int skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static inline struct sk_buff *vnet_skb_shape(struct sk_buff *skb, int ncookies)
{
 struct sk_buff *nskb;
 int i, len, pad, docopy;

 len = skb->len;
 pad = 0;
 if (len < ETH_ZLEN) {
  pad += ETH_ZLEN - skb->len;
  len += pad;
 }
 len += VNET_PACKET_SKIP;
 pad += 8 - (len & 7);


 docopy = skb_shinfo(skb)->nr_frags >= ncookies;
 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  skb_frag_t *f = &skb_shinfo(skb)->frags[i];

  docopy |= skb_frag_off(f) & 7;
 }
 if (((unsigned long)skb->data & 7) != VNET_PACKET_SKIP ||
     skb_tailroom(skb) < pad ||
     skb_headroom(skb) < VNET_PACKET_SKIP || docopy) {
  int start = 0, offset;
  __wsum csum;

  len = skb->len > ETH_ZLEN ? skb->len : ETH_ZLEN;
  nskb = alloc_and_align_skb(skb->dev, len);
  if (!nskb) {
   dev_kfree_skb(skb);
   return ((void*)0);
  }
  skb_reserve(nskb, VNET_PACKET_SKIP);

  nskb->protocol = skb->protocol;
  offset = skb_mac_header(skb) - skb->data;
  skb_set_mac_header(nskb, offset);
  offset = skb_network_header(skb) - skb->data;
  skb_set_network_header(nskb, offset);
  offset = skb_transport_header(skb) - skb->data;
  skb_set_transport_header(nskb, offset);

  offset = 0;
  nskb->csum_offset = skb->csum_offset;
  nskb->ip_summed = skb->ip_summed;

  if (skb->ip_summed == CHECKSUM_PARTIAL)
   start = skb_checksum_start_offset(skb);
  if (start) {
   int offset = start + nskb->csum_offset;


   if (skb_copy_bits(skb, 0, nskb->data, start)) {
    dev_kfree_skb(nskb);
    dev_kfree_skb(skb);
    return ((void*)0);
   }


   *(__sum16 *)(skb->data + offset) = 0;
   csum = skb_copy_and_csum_bits(skb, start,
            nskb->data + start,
            skb->len - start, 0);


   if (skb->protocol == htons(ETH_P_IP)) {
    struct iphdr *iph = ip_hdr(nskb);

    if (iph->protocol == IPPROTO_TCP ||
        iph->protocol == IPPROTO_UDP) {
     csum = csum_tcpudp_magic(iph->saddr,
         iph->daddr,
         skb->len - start,
         iph->protocol,
         csum);
    }
   } else if (skb->protocol == htons(ETH_P_IPV6)) {
    struct ipv6hdr *ip6h = ipv6_hdr(nskb);

    if (ip6h->nexthdr == IPPROTO_TCP ||
        ip6h->nexthdr == IPPROTO_UDP) {
     csum = csum_ipv6_magic(&ip6h->saddr,
              &ip6h->daddr,
              skb->len - start,
              ip6h->nexthdr,
              csum);
    }
   }


   *(__sum16 *)(nskb->data + offset) = csum;

   nskb->ip_summed = CHECKSUM_NONE;
  } else if (skb_copy_bits(skb, 0, nskb->data, skb->len)) {
   dev_kfree_skb(nskb);
   dev_kfree_skb(skb);
   return ((void*)0);
  }
  (void)skb_put(nskb, skb->len);
  if (skb_is_gso(skb)) {
   skb_shinfo(nskb)->gso_size = skb_shinfo(skb)->gso_size;
   skb_shinfo(nskb)->gso_type = skb_shinfo(skb)->gso_type;
  }
  nskb->queue_mapping = skb->queue_mapping;
  dev_kfree_skb(skb);
  skb = nskb;
 }
 return skb;
}
