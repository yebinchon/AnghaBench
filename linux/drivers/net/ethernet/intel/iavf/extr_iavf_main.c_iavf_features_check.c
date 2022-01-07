
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; size_t data; scalar_t__ encapsulation; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int gso_size; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int NETIF_F_CSUM_MASK ;
 int NETIF_F_GSO_MASK ;
 size_t skb_inner_network_header (struct sk_buff*) ;
 size_t skb_inner_transport_header (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 size_t skb_network_header (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 size_t skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static netdev_features_t iavf_features_check(struct sk_buff *skb,
          struct net_device *dev,
          netdev_features_t features)
{
 size_t len;





 if (skb->ip_summed != CHECKSUM_PARTIAL)
  return features;




 if (skb_is_gso(skb) && (skb_shinfo(skb)->gso_size < 64))
  features &= ~NETIF_F_GSO_MASK;


 len = skb_network_header(skb) - skb->data;
 if (len & ~(63 * 2))
  goto out_err;


 len = skb_transport_header(skb) - skb_network_header(skb);
 if (len & ~(127 * 4))
  goto out_err;

 if (skb->encapsulation) {

  len = skb_inner_network_header(skb) - skb_transport_header(skb);
  if (len & ~(127 * 2))
   goto out_err;


  len = skb_inner_transport_header(skb) -
        skb_inner_network_header(skb);
  if (len & ~(127 * 4))
   goto out_err;
 }






 return features;
out_err:
 return features & ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);
}
