
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcmgenet_rx_ring {int index; int priv; } ;


 int INTRL2_CPU_MASK_SET ;
 int UMAC_IRQ1_RX_INTR_SHIFT ;
 int bcmgenet_intrl2_1_writel (int ,int,int ) ;

__attribute__((used)) static inline void bcmgenet_rx_ring_int_disable(struct bcmgenet_rx_ring *ring)
{
 bcmgenet_intrl2_1_writel(ring->priv,
     1 << (UMAC_IRQ1_RX_INTR_SHIFT + ring->index),
     INTRL2_CPU_MASK_SET);
}
