
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct meson_ao_cec_g12a_device {int regmap; } ;
typedef int irqreturn_t ;


 int CECB_INTR_STAT_REG ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int regmap_read (int ,int ,scalar_t__*) ;

__attribute__((used)) static irqreturn_t meson_ao_cec_g12a_irq(int irq, void *data)
{
 struct meson_ao_cec_g12a_device *ao_cec = data;
 u32 stat;

 regmap_read(ao_cec->regmap, CECB_INTR_STAT_REG, &stat);
 if (stat)
  return IRQ_WAKE_THREAD;

 return IRQ_NONE;
}
