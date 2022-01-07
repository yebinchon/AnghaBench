
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_frags; int gso_type; } ;


 int SKB_GSO_TCPV6 ;
 scalar_t__ skb_headlen (struct sk_buff const*) ;
 scalar_t__ skb_is_gso (struct sk_buff const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;
 scalar_t__ skb_transport_offset (struct sk_buff const*) ;
 scalar_t__ tcp_hdrlen (struct sk_buff const*) ;

__attribute__((used)) static u16 atl1c_cal_tpd_req(const struct sk_buff *skb)
{
 u16 tpd_req;
 u16 proto_hdr_len = 0;

 tpd_req = skb_shinfo(skb)->nr_frags + 1;

 if (skb_is_gso(skb)) {
  proto_hdr_len = skb_transport_offset(skb) + tcp_hdrlen(skb);
  if (proto_hdr_len < skb_headlen(skb))
   tpd_req++;
  if (skb_shinfo(skb)->gso_type & SKB_GSO_TCPV6)
   tpd_req++;
 }
 return tpd_req;
}
