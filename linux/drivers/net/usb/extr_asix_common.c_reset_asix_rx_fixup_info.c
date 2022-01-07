
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asix_rx_fixup_info {int split_head; scalar_t__ header; scalar_t__ remaining; int * ax_skb; } ;


 int kfree_skb (int *) ;

__attribute__((used)) static void reset_asix_rx_fixup_info(struct asix_rx_fixup_info *rx)
{





 if (rx->ax_skb) {

  kfree_skb(rx->ax_skb);
  rx->ax_skb = ((void*)0);
 }




 rx->remaining = 0;
 rx->split_head = 0;
 rx->header = 0;
}
