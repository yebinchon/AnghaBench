
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_eth {int tx_irq_lock; int tx_int_mask_reg; } ;


 int mtk_r32 (struct mtk_eth*,int ) ;
 int mtk_w32 (struct mtk_eth*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void mtk_tx_irq_enable(struct mtk_eth *eth, u32 mask)
{
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&eth->tx_irq_lock, flags);
 val = mtk_r32(eth, eth->tx_int_mask_reg);
 mtk_w32(eth, val | mask, eth->tx_int_mask_reg);
 spin_unlock_irqrestore(&eth->tx_irq_lock, flags);
}
