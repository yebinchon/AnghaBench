
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct can_rx_offload_cb {int dummy; } ;


 int BUILD_BUG_ON (int) ;

__attribute__((used)) static inline struct can_rx_offload_cb *can_rx_offload_get_cb(struct sk_buff *skb)
{
 BUILD_BUG_ON(sizeof(struct can_rx_offload_cb) > sizeof(skb->cb));

 return (struct can_rx_offload_cb *)skb->cb;
}
