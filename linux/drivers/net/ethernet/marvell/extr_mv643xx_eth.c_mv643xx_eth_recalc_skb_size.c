
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv643xx_eth_private {int skb_size; TYPE_1__* dev; } ;
struct TYPE_2__ {int mtu; } ;


 scalar_t__ SKB_DMA_REALIGN ;

__attribute__((used)) static void mv643xx_eth_recalc_skb_size(struct mv643xx_eth_private *mp)
{
 int skb_size;







 skb_size = mp->dev->mtu + 36;






 mp->skb_size = (skb_size + 7) & ~7;







 mp->skb_size += SKB_DMA_REALIGN;
}
