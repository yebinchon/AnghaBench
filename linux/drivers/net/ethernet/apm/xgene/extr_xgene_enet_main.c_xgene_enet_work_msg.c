
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct sk_buff {scalar_t__ protocol; int len; struct net_device* dev; int data; } ;
struct net_device {int features; } ;
struct iphdr {scalar_t__ protocol; } ;
struct TYPE_2__ {int gso_size; int nr_frags; int * frags; } ;


 int EBUSY ;
 int EC ;
 int ET ;
 int ETHHDR ;
 int ETH_P_8021Q ;
 int ETH_P_IP ;
 int IC ;
 int IPHDR ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int IS ;
 int MSS ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_TSO ;
 int SET_BIT (int ) ;
 int SET_VAL (int ,int) ;
 int TCPHDR ;
 int TSO_IPPROTO_TCP ;
 int TYPE_ETH_WORK_MESSAGE ;
 int UDP_HDR_SIZE ;
 scalar_t__ htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_hdrlen (struct sk_buff*) ;
 int ip_is_fragment (struct iphdr*) ;
 scalar_t__ likely (int) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_is_nonlinear (struct sk_buff*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int tcp_hdrlen (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int xgene_enet_hdr_len (int ) ;
 int xgene_enet_setup_mss (struct net_device*,int) ;

__attribute__((used)) static int xgene_enet_work_msg(struct sk_buff *skb, u64 *hopinfo)
{
 struct net_device *ndev = skb->dev;
 struct iphdr *iph;
 u8 l3hlen = 0, l4hlen = 0;
 u8 ethhdr, proto = 0, csum_enable = 0;
 u32 hdr_len, mss = 0;
 u32 i, len, nr_frags;
 int mss_index;

 ethhdr = xgene_enet_hdr_len(skb->data);

 if (unlikely(skb->protocol != htons(ETH_P_IP)) &&
     unlikely(skb->protocol != htons(ETH_P_8021Q)))
  goto out;

 if (unlikely(!(skb->dev->features & NETIF_F_IP_CSUM)))
  goto out;

 iph = ip_hdr(skb);
 if (unlikely(ip_is_fragment(iph)))
  goto out;

 if (likely(iph->protocol == IPPROTO_TCP)) {
  l4hlen = tcp_hdrlen(skb) >> 2;
  csum_enable = 1;
  proto = TSO_IPPROTO_TCP;
  if (ndev->features & NETIF_F_TSO) {
   hdr_len = ethhdr + ip_hdrlen(skb) + tcp_hdrlen(skb);
   mss = skb_shinfo(skb)->gso_size;

   if (skb_is_nonlinear(skb)) {
    len = skb_headlen(skb);
    nr_frags = skb_shinfo(skb)->nr_frags;

    for (i = 0; i < 2 && i < nr_frags; i++)
     len += skb_frag_size(
      &skb_shinfo(skb)->frags[i]);


    if (unlikely(hdr_len > len)) {
     if (skb_linearize(skb))
      return 0;
    }
   }

   if (!mss || ((skb->len - hdr_len) <= mss))
    goto out;

   mss_index = xgene_enet_setup_mss(ndev, mss);
   if (unlikely(mss_index < 0))
    return -EBUSY;

   *hopinfo |= SET_BIT(ET) | SET_VAL(MSS, mss_index);
  }
 } else if (iph->protocol == IPPROTO_UDP) {
  l4hlen = UDP_HDR_SIZE;
  csum_enable = 1;
 }
out:
 l3hlen = ip_hdrlen(skb) >> 2;
 *hopinfo |= SET_VAL(TCPHDR, l4hlen) |
      SET_VAL(IPHDR, l3hlen) |
      SET_VAL(ETHHDR, ethhdr) |
      SET_VAL(EC, csum_enable) |
      SET_VAL(IS, proto) |
      SET_BIT(IC) |
      SET_BIT(TYPE_ETH_WORK_MESSAGE);

 return 0;
}
