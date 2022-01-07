
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcmgenet_tx_ring {int index; int priv; } ;


 int INTRL2_CPU_MASK_CLEAR ;
 int bcmgenet_intrl2_1_writel (int ,int,int ) ;

__attribute__((used)) static inline void bcmgenet_tx_ring_int_enable(struct bcmgenet_tx_ring *ring)
{
 bcmgenet_intrl2_1_writel(ring->priv, 1 << ring->index,
     INTRL2_CPU_MASK_CLEAR);
}
