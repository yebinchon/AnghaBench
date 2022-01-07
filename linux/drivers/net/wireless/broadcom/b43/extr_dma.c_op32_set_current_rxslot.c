
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43_dmaring {int dummy; } ;
struct b43_dmadesc32 {int dummy; } ;


 int B43_DMA32_RXINDEX ;
 int b43_dma_write (struct b43_dmaring*,int ,int ) ;

__attribute__((used)) static void op32_set_current_rxslot(struct b43_dmaring *ring, int slot)
{
 b43_dma_write(ring, B43_DMA32_RXINDEX,
        (u32) (slot * sizeof(struct b43_dmadesc32)));
}
