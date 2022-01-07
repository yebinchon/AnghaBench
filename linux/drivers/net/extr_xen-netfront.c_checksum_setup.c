
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; } ;
struct netfront_info {int rx_gso_checksum_fixup; } ;
struct net_device {int dummy; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int atomic_inc (int *) ;
 struct netfront_info* netdev_priv (struct net_device*) ;
 int skb_checksum_setup (struct sk_buff*,int) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;

__attribute__((used)) static int checksum_setup(struct net_device *dev, struct sk_buff *skb)
{
 bool recalculate_partial_csum = 0;







 if (skb->ip_summed != CHECKSUM_PARTIAL && skb_is_gso(skb)) {
  struct netfront_info *np = netdev_priv(dev);
  atomic_inc(&np->rx_gso_checksum_fixup);
  skb->ip_summed = CHECKSUM_PARTIAL;
  recalculate_partial_csum = 1;
 }


 if (skb->ip_summed != CHECKSUM_PARTIAL)
  return 0;

 return skb_checksum_setup(skb, recalculate_partial_csum);
}
