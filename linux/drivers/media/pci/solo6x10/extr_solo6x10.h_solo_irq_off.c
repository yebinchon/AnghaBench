
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct solo_dev {int irq_mask; } ;


 int SOLO_IRQ_MASK ;
 int solo_reg_write (struct solo_dev*,int ,int ) ;

__attribute__((used)) static inline void solo_irq_off(struct solo_dev *dev, u32 mask)
{
 dev->irq_mask &= ~mask;
 solo_reg_write(dev, SOLO_IRQ_MASK, dev->irq_mask);
}
