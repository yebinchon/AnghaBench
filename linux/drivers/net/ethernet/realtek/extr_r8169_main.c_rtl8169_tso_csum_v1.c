
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct iphdr {scalar_t__ protocol; } ;
struct TYPE_2__ {int gso_size; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int TD0_IP_CS ;
 int TD0_MSS_SHIFT ;
 int TD0_TCP_CS ;
 int TD0_UDP_CS ;
 int TD_LSO ;
 int TD_MSS_MAX ;
 int WARN_ON_ONCE (int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int min (int,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void rtl8169_tso_csum_v1(struct sk_buff *skb, u32 *opts)
{
 u32 mss = skb_shinfo(skb)->gso_size;

 if (mss) {
  opts[0] |= TD_LSO;
  opts[0] |= min(mss, TD_MSS_MAX) << TD0_MSS_SHIFT;
 } else if (skb->ip_summed == CHECKSUM_PARTIAL) {
  const struct iphdr *ip = ip_hdr(skb);

  if (ip->protocol == IPPROTO_TCP)
   opts[0] |= TD0_IP_CS | TD0_TCP_CS;
  else if (ip->protocol == IPPROTO_UDP)
   opts[0] |= TD0_IP_CS | TD0_UDP_CS;
  else
   WARN_ON_ONCE(1);
 }
}
