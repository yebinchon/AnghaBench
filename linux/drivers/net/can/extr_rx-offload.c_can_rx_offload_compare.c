
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct can_rx_offload_cb {int timestamp; } ;


 struct can_rx_offload_cb* can_rx_offload_get_cb (struct sk_buff*) ;

__attribute__((used)) static int can_rx_offload_compare(struct sk_buff *a, struct sk_buff *b)
{
 const struct can_rx_offload_cb *cb_a, *cb_b;

 cb_a = can_rx_offload_get_cb(a);
 cb_b = can_rx_offload_get_cb(b);




 return cb_b->timestamp - cb_a->timestamp;
}
