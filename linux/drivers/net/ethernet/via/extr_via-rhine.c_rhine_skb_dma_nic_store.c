
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rhine_skb_dma {int dma; int skb; } ;
struct rhine_private {TYPE_1__* rx_ring; int * rx_skbuff; int * rx_skbuff_dma; } ;
struct TYPE_2__ {int addr; } ;


 int cpu_to_le32 (int ) ;
 int dma_wmb () ;

__attribute__((used)) static inline void rhine_skb_dma_nic_store(struct rhine_private *rp,
        struct rhine_skb_dma *sd, int entry)
{
 rp->rx_skbuff_dma[entry] = sd->dma;
 rp->rx_skbuff[entry] = sd->skb;

 rp->rx_ring[entry].addr = cpu_to_le32(sd->dma);
 dma_wmb();
}
