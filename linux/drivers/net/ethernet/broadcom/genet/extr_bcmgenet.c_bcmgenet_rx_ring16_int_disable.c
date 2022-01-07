
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcmgenet_rx_ring {int priv; } ;


 int INTRL2_CPU_MASK_SET ;
 int UMAC_IRQ_RXDMA_DONE ;
 int bcmgenet_intrl2_0_writel (int ,int ,int ) ;

__attribute__((used)) static inline void bcmgenet_rx_ring16_int_disable(struct bcmgenet_rx_ring *ring)
{
 bcmgenet_intrl2_0_writel(ring->priv, UMAC_IRQ_RXDMA_DONE,
     INTRL2_CPU_MASK_SET);
}
