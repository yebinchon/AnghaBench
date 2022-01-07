
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw5864_dev {int irqmask; } ;


 int TW5864_INTR_ENABLE_H ;
 int TW5864_INTR_ENABLE_L ;
 int tw_writel (int ,int) ;

void tw5864_irqmask_apply(struct tw5864_dev *dev)
{
 tw_writel(TW5864_INTR_ENABLE_L, dev->irqmask & 0xffff);
 tw_writel(TW5864_INTR_ENABLE_H, (dev->irqmask >> 16));
}
