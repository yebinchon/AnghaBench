
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_ao_cec_device {scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ CEC_INTR_STAT_REG ;
 int CEC_INTR_TX ;
 int IRQ_HANDLED ;
 int meson_ao_cec_irq_rx (struct meson_ao_cec_device*) ;
 int meson_ao_cec_irq_tx (struct meson_ao_cec_device*) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static irqreturn_t meson_ao_cec_irq_thread(int irq, void *data)
{
 struct meson_ao_cec_device *ao_cec = data;
 u32 stat = readl_relaxed(ao_cec->base + CEC_INTR_STAT_REG);

 if (stat & CEC_INTR_TX)
  meson_ao_cec_irq_tx(ao_cec);

 meson_ao_cec_irq_rx(ao_cec);

 return IRQ_HANDLED;
}
