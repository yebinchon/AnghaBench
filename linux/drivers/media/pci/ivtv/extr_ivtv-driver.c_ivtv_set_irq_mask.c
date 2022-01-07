
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ivtv {int irqmask; } ;


 int IVTV_REG_IRQMASK ;
 int write_reg_sync (int ,int ) ;

void ivtv_set_irq_mask(struct ivtv *itv, u32 mask)
{
 itv->irqmask |= mask;
 write_reg_sync(itv->irqmask, IVTV_REG_IRQMASK);
}
