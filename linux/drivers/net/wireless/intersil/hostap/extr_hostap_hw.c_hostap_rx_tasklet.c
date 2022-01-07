
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int rx_list; } ;
typedef TYPE_1__ local_info_t ;


 int hostap_rx_skb (TYPE_1__*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void hostap_rx_tasklet(unsigned long data)
{
 local_info_t *local = (local_info_t *) data;
 struct sk_buff *skb;

 while ((skb = skb_dequeue(&local->rx_list)) != ((void*)0))
  hostap_rx_skb(local, skb);
}
