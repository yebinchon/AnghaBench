
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {unsigned int len; } ;


 int EINVAL ;
 int ERANGE ;
 unsigned int ETH_HLEN ;
 unsigned int IP6_HLEN ;
 unsigned int IPV4_HLEN (int*) ;



 unsigned int PTP_CLASS_PMASK ;


 unsigned int PTP_CLASS_VLAN ;
 unsigned int PTP_CLASS_VMASK ;
 unsigned int UDP_HLEN ;
 scalar_t__ VLAN_HLEN ;
 unsigned int ptp_classify_raw (struct sk_buff*) ;
 int* skb_mac_header (struct sk_buff*) ;

__attribute__((used)) static int mlxsw_sp_ptp_parse(struct sk_buff *skb,
         u8 *p_domain_number,
         u8 *p_message_type,
         u16 *p_sequence_id)
{
 unsigned int offset = 0;
 unsigned int ptp_class;
 u8 *data;

 data = skb_mac_header(skb);
 ptp_class = ptp_classify_raw(skb);

 switch (ptp_class & PTP_CLASS_VMASK) {
 case 129:
 case 128:
  break;
 default:
  return -ERANGE;
 }

 if (ptp_class & PTP_CLASS_VLAN)
  offset += VLAN_HLEN;

 switch (ptp_class & PTP_CLASS_PMASK) {
 case 132:
  offset += ETH_HLEN + IPV4_HLEN(data + offset) + UDP_HLEN;
  break;
 case 131:
  offset += ETH_HLEN + IP6_HLEN + UDP_HLEN;
  break;
 case 130:
  offset += ETH_HLEN;
  break;
 default:
  return -ERANGE;
 }


 if (skb->len < offset + 34)
  return -EINVAL;

 *p_message_type = data[offset] & 0x0f;
 *p_domain_number = data[offset + 4];
 *p_sequence_id = (u16)(data[offset + 30]) << 8 | data[offset + 31];
 return 0;
}
