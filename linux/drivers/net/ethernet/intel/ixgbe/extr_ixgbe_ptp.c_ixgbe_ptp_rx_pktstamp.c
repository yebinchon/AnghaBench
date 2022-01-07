
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct ixgbe_q_vector {int adapter; } ;
typedef int __le64 ;


 scalar_t__ IXGBE_TS_HDR_LEN ;
 int __pskb_trim (struct sk_buff*,scalar_t__) ;
 int ixgbe_ptp_convert_to_hwtstamp (int ,int ,int ) ;
 int le64_to_cpu (int ) ;
 int skb_copy_bits (struct sk_buff*,scalar_t__,int *,scalar_t__) ;
 int skb_hwtstamps (struct sk_buff*) ;

void ixgbe_ptp_rx_pktstamp(struct ixgbe_q_vector *q_vector,
      struct sk_buff *skb)
{
 __le64 regval;


 skb_copy_bits(skb, skb->len - IXGBE_TS_HDR_LEN, &regval,
        IXGBE_TS_HDR_LEN);
 __pskb_trim(skb, skb->len - IXGBE_TS_HDR_LEN);







 ixgbe_ptp_convert_to_hwtstamp(q_vector->adapter, skb_hwtstamps(skb),
          le64_to_cpu(regval));
}
