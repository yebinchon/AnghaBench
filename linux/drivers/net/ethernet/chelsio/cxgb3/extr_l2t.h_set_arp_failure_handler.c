
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int arp_failure_handler_func ;
struct TYPE_2__ {int arp_failure_handler; } ;


 TYPE_1__* L2T_SKB_CB (struct sk_buff*) ;

__attribute__((used)) static inline void set_arp_failure_handler(struct sk_buff *skb,
        arp_failure_handler_func hnd)
{
 L2T_SKB_CB(skb)->arp_failure_handler = hnd;
}
