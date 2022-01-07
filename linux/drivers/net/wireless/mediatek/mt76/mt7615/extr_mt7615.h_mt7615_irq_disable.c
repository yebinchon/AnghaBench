
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7615_dev {int mt76; } ;


 int MT_INT_MASK_CSR ;
 int mt76_set_irq_mask (int *,int ,int ,int ) ;

__attribute__((used)) static inline void mt7615_irq_disable(struct mt7615_dev *dev, u32 mask)
{
 mt76_set_irq_mask(&dev->mt76, MT_INT_MASK_CSR, mask, 0);
}
