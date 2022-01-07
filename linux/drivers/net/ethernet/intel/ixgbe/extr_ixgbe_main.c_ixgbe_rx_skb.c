
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ixgbe_q_vector {int napi; } ;


 int napi_gro_receive (int *,struct sk_buff*) ;

void ixgbe_rx_skb(struct ixgbe_q_vector *q_vector,
    struct sk_buff *skb)
{
 napi_gro_receive(&q_vector->napi, skb);
}
