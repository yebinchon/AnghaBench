
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int * data; } ;
typedef int seqid ;
typedef int lo ;


 unsigned int ETH_HLEN ;
 unsigned int IPV4_HLEN (int *) ;
 scalar_t__ OFF_PTP_SEQUENCE_ID ;
 int OFF_PTP_SOURCE_UUID ;
 scalar_t__ PTP_CLASS_NONE ;
 unsigned int UDP_HLEN ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 scalar_t__ ptp_classify_raw (struct sk_buff*) ;

__attribute__((used)) static int pch_ptp_match(struct sk_buff *skb, u16 uid_hi, u32 uid_lo, u16 seqid)
{
 u8 *data = skb->data;
 unsigned int offset;
 u16 *hi, *id;
 u32 lo;

 if (ptp_classify_raw(skb) == PTP_CLASS_NONE)
  return 0;

 offset = ETH_HLEN + IPV4_HLEN(data) + UDP_HLEN;

 if (skb->len < offset + OFF_PTP_SEQUENCE_ID + sizeof(seqid))
  return 0;

 hi = (u16 *)(data + offset + OFF_PTP_SOURCE_UUID);
 id = (u16 *)(data + offset + OFF_PTP_SEQUENCE_ID);

 memcpy(&lo, &hi[1], sizeof(lo));

 return (uid_hi == *hi &&
  uid_lo == lo &&
  seqid == *id);
}
