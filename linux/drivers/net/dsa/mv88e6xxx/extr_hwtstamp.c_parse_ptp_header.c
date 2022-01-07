
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {unsigned int len; } ;


 unsigned int ETH_HLEN ;
 int IP6_HLEN ;
 int IPV4_HLEN (int *) ;



 unsigned int PTP_CLASS_PMASK ;
 unsigned int PTP_CLASS_VLAN ;
 unsigned int UDP_HLEN ;
 scalar_t__ VLAN_HLEN ;
 int * skb_mac_header (struct sk_buff*) ;

__attribute__((used)) static u8 *parse_ptp_header(struct sk_buff *skb, unsigned int type)
{
 u8 *data = skb_mac_header(skb);
 unsigned int offset = 0;

 if (type & PTP_CLASS_VLAN)
  offset += VLAN_HLEN;

 switch (type & PTP_CLASS_PMASK) {
 case 130:
  offset += ETH_HLEN + IPV4_HLEN(data + offset) + UDP_HLEN;
  break;
 case 129:
  offset += ETH_HLEN + IP6_HLEN + UDP_HLEN;
  break;
 case 128:
  offset += ETH_HLEN;
  break;
 default:
  return ((void*)0);
 }


 if (skb->len + ETH_HLEN < offset + 34)
  return ((void*)0);

 return data + offset;
}
