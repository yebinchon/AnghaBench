
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int IPPROTO_SCTP ;
 int ipv6_find_hdr (struct sk_buff*,unsigned int*,int ,int *,int *) ;
 unsigned int skb_checksum_start_offset (struct sk_buff*) ;

__attribute__((used)) static inline bool ixgbe_ipv6_csum_is_sctp(struct sk_buff *skb)
{
 unsigned int offset = 0;

 ipv6_find_hdr(skb, &offset, IPPROTO_SCTP, ((void*)0), ((void*)0));

 return offset == skb_checksum_start_offset(skb);
}
