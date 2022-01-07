
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {unsigned int rx_pending; int rx_data_size; struct rx_ring_info* rx_ring; struct sky2_hw* hw; } ;
struct sky2_hw {int pdev; } ;
struct rx_ring_info {int * skb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_kfree_skb (int *) ;
 int sky2_get_rx_data_size (struct sky2_port*) ;
 int * sky2_rx_alloc (struct sky2_port*,int ) ;
 scalar_t__ sky2_rx_map_skb (int ,struct rx_ring_info*,int ) ;

__attribute__((used)) static int sky2_alloc_rx_skbs(struct sky2_port *sky2)
{
 struct sky2_hw *hw = sky2->hw;
 unsigned i;

 sky2->rx_data_size = sky2_get_rx_data_size(sky2);


 for (i = 0; i < sky2->rx_pending; i++) {
  struct rx_ring_info *re = sky2->rx_ring + i;

  re->skb = sky2_rx_alloc(sky2, GFP_KERNEL);
  if (!re->skb)
   return -ENOMEM;

  if (sky2_rx_map_skb(hw->pdev, re, sky2->rx_data_size)) {
   dev_kfree_skb(re->skb);
   re->skb = ((void*)0);
   return -ENOMEM;
  }
 }
 return 0;
}
