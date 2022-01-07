
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int csum; } ;
struct iphdr {scalar_t__ protocol; int ihl; int daddr; int saddr; int tot_len; } ;
typedef int __wsum ;
typedef scalar_t__ __u8 ;
typedef scalar_t__ __u16 ;


 scalar_t__ IPPROTO_SCTP ;
 scalar_t__ be16_to_cpu (int ) ;
 int csum_sub (int ,int ) ;
 int csum_tcpudp_nofold (int ,int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int get_fixed_ipv4_csum(__wsum hw_checksum, struct sk_buff *skb,
          struct iphdr *iph)
{
 __u16 length_for_csum = 0;
 __wsum csum_pseudo_header = 0;
 __u8 ipproto = iph->protocol;

 if (unlikely(ipproto == IPPROTO_SCTP))
  return -1;

 length_for_csum = (be16_to_cpu(iph->tot_len) - (iph->ihl << 2));
 csum_pseudo_header = csum_tcpudp_nofold(iph->saddr, iph->daddr,
      length_for_csum, ipproto, 0);
 skb->csum = csum_sub(hw_checksum, csum_pseudo_header);
 return 0;
}
