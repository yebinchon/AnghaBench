
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asix_rx_fixup_info {int * ax_skb; } ;
struct asix_common_private {struct asix_rx_fixup_info rx_fixup_info; } ;


 int kfree_skb (int *) ;

void asix_rx_fixup_common_free(struct asix_common_private *dp)
{
 struct asix_rx_fixup_info *rx;

 if (!dp)
  return;

 rx = &dp->rx_fixup_info;

 if (rx->ax_skb) {
  kfree_skb(rx->ax_skb);
  rx->ax_skb = ((void*)0);
 }
}
