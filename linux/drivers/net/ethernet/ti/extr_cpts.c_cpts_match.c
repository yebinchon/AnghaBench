
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int* data; unsigned int len; } ;


 unsigned int ETH_HLEN ;
 unsigned int IP6_HLEN ;
 unsigned int IPV4_HLEN (int*) ;
 int OFF_PTP_CONTROL ;
 unsigned int OFF_PTP_SEQUENCE_ID ;



 unsigned int PTP_CLASS_PMASK ;
 unsigned int PTP_CLASS_V1 ;
 unsigned int PTP_CLASS_VLAN ;
 unsigned int UDP_HLEN ;
 scalar_t__ VLAN_HLEN ;
 scalar_t__ ntohs (scalar_t__) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static int cpts_match(struct sk_buff *skb, unsigned int ptp_class,
        u16 ts_seqid, u8 ts_msgtype)
{
 u16 *seqid;
 unsigned int offset = 0;
 u8 *msgtype, *data = skb->data;

 if (ptp_class & PTP_CLASS_VLAN)
  offset += VLAN_HLEN;

 switch (ptp_class & PTP_CLASS_PMASK) {
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
  return 0;
 }

 if (skb->len + ETH_HLEN < offset + OFF_PTP_SEQUENCE_ID + sizeof(*seqid))
  return 0;

 if (unlikely(ptp_class & PTP_CLASS_V1))
  msgtype = data + offset + OFF_PTP_CONTROL;
 else
  msgtype = data + offset;

 seqid = (u16 *)(data + offset + OFF_PTP_SEQUENCE_ID);

 return (ts_msgtype == (*msgtype & 0xf) && ts_seqid == ntohs(*seqid));
}
