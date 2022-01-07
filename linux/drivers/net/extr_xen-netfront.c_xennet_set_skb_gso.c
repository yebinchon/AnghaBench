
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; scalar_t__ size; } ;
struct TYPE_4__ {TYPE_2__ gso; } ;
struct xen_netif_extra_info {TYPE_1__ u; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ gso_segs; int gso_type; scalar_t__ gso_size; } ;


 int EINVAL ;
 int SKB_GSO_DODGY ;
 int SKB_GSO_TCPV4 ;
 int SKB_GSO_TCPV6 ;
 scalar_t__ XEN_NETIF_GSO_TYPE_TCPV4 ;
 scalar_t__ XEN_NETIF_GSO_TYPE_TCPV6 ;
 scalar_t__ net_ratelimit () ;
 int pr_warn (char*,...) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int xennet_set_skb_gso(struct sk_buff *skb,
         struct xen_netif_extra_info *gso)
{
 if (!gso->u.gso.size) {
  if (net_ratelimit())
   pr_warn("GSO size must not be zero\n");
  return -EINVAL;
 }

 if (gso->u.gso.type != XEN_NETIF_GSO_TYPE_TCPV4 &&
     gso->u.gso.type != XEN_NETIF_GSO_TYPE_TCPV6) {
  if (net_ratelimit())
   pr_warn("Bad GSO type %d\n", gso->u.gso.type);
  return -EINVAL;
 }

 skb_shinfo(skb)->gso_size = gso->u.gso.size;
 skb_shinfo(skb)->gso_type =
  (gso->u.gso.type == XEN_NETIF_GSO_TYPE_TCPV4) ?
  SKB_GSO_TCPV4 :
  SKB_GSO_TCPV6;


 skb_shinfo(skb)->gso_type |= SKB_GSO_DODGY;
 skb_shinfo(skb)->gso_segs = 0;

 return 0;
}
