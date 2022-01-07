
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
typedef int __be16 ;


 int OFF_PTP_SEQUENCE_ID ;
 unsigned int SKB_PTP_TYPE (struct sk_buff*) ;
 scalar_t__ ntohs (int ) ;
 int * parse_ptp_header (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int seq_match(struct sk_buff *skb, u16 ts_seqid)
{
 unsigned int type = SKB_PTP_TYPE(skb);
 u8 *hdr = parse_ptp_header(skb, type);
 __be16 *seqid;

 seqid = (__be16 *)(hdr + OFF_PTP_SEQUENCE_ID);

 return ts_seqid == ntohs(*seqid);
}
