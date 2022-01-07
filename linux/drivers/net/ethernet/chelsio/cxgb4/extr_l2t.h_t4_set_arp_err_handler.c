
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int arp_err_handler_t ;
struct TYPE_2__ {int arp_err_handler; void* handle; } ;


 TYPE_1__* L2T_SKB_CB (struct sk_buff*) ;

__attribute__((used)) static inline void t4_set_arp_err_handler(struct sk_buff *skb, void *handle,
       arp_err_handler_t handler)
{
 L2T_SKB_CB(skb)->handle = handle;
 L2T_SKB_CB(skb)->arp_err_handler = handler;
}
