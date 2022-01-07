
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int skb_frag_t ;
typedef int netdev_features_t ;
struct TYPE_4__ {scalar_t__ protocol; } ;
struct TYPE_3__ {unsigned int nr_frags; int * frags; } ;


 scalar_t__ IPPROTO_TCP ;
 int IS_ALIGNED (scalar_t__,int ) ;
 int MACB_NETIF_LSO ;
 int MACB_TX_LEN_ALIGN ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 scalar_t__ skb_frag_size (int const*) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 int skb_is_nonlinear (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 unsigned int skb_transport_offset (struct sk_buff*) ;
 scalar_t__ tcp_hdrlen (struct sk_buff*) ;

__attribute__((used)) static netdev_features_t macb_features_check(struct sk_buff *skb,
          struct net_device *dev,
          netdev_features_t features)
{
 unsigned int nr_frags, f;
 unsigned int hdrlen;




 if (!skb_is_nonlinear(skb))
  return features;


 hdrlen = skb_transport_offset(skb);
 if (ip_hdr(skb)->protocol == IPPROTO_TCP)
  hdrlen += tcp_hdrlen(skb);





 if (!IS_ALIGNED(skb_headlen(skb) - hdrlen, MACB_TX_LEN_ALIGN))
  return features & ~MACB_NETIF_LSO;

 nr_frags = skb_shinfo(skb)->nr_frags;

 nr_frags--;
 for (f = 0; f < nr_frags; f++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[f];

  if (!IS_ALIGNED(skb_frag_size(frag), MACB_TX_LEN_ALIGN))
   return features & ~MACB_NETIF_LSO;
 }
 return features;
}
