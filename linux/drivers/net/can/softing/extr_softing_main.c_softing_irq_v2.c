
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct softing {int * dpram; } ;
typedef int irqreturn_t ;


 size_t DPRAM_V2_IRQ_TOHOST ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int ioread8 (int *) ;
 int iowrite8 (int ,int *) ;

__attribute__((used)) static irqreturn_t softing_irq_v2(int irq, void *dev_id)
{
 struct softing *card = (struct softing *)dev_id;
 uint8_t ir;

 ir = ioread8(&card->dpram[DPRAM_V2_IRQ_TOHOST]);
 iowrite8(0, &card->dpram[DPRAM_V2_IRQ_TOHOST]);
 return (1 == ir) ? IRQ_WAKE_THREAD : IRQ_NONE;
}
