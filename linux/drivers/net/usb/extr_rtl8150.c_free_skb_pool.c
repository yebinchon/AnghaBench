
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rx_skb_pool; } ;
typedef TYPE_1__ rtl8150_t ;


 int RX_SKB_POOL_SIZE ;
 int dev_kfree_skb (int ) ;

__attribute__((used)) static void free_skb_pool(rtl8150_t *dev)
{
 int i;

 for (i = 0; i < RX_SKB_POOL_SIZE; i++)
  dev_kfree_skb(dev->rx_skb_pool[i]);
}
