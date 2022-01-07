
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct lan743x_rx {TYPE_1__* adapter; } ;
struct TYPE_2__ {int netdev; } ;


 int ETH_HLEN ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int LAN743X_MAX_FRAME_SIZE ;
 int RX_HEAD_PADDING ;
 struct sk_buff* __netdev_alloc_skb (int ,int,int) ;

__attribute__((used)) static struct sk_buff *lan743x_rx_allocate_skb(struct lan743x_rx *rx)
{
 int length = 0;

 length = (LAN743X_MAX_FRAME_SIZE + ETH_HLEN + 4 + RX_HEAD_PADDING);
 return __netdev_alloc_skb(rx->adapter->netdev,
      length, GFP_ATOMIC | GFP_DMA);
}
