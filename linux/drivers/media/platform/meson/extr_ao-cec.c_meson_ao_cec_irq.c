
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct meson_ao_cec_device {scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ CEC_INTR_STAT_REG ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static irqreturn_t meson_ao_cec_irq(int irq, void *data)
{
 struct meson_ao_cec_device *ao_cec = data;
 u32 stat = readl_relaxed(ao_cec->base + CEC_INTR_STAT_REG);

 if (stat)
  return IRQ_WAKE_THREAD;

 return IRQ_NONE;
}
