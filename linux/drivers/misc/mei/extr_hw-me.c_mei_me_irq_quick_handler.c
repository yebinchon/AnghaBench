
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int dev_dbg (int ,char*,int ) ;
 int me_intr_disable (struct mei_device*,int ) ;
 int me_intr_src (int ) ;
 int mei_hcsr_read (struct mei_device*) ;

irqreturn_t mei_me_irq_quick_handler(int irq, void *dev_id)
{
 struct mei_device *dev = (struct mei_device *)dev_id;
 u32 hcsr;

 hcsr = mei_hcsr_read(dev);
 if (!me_intr_src(hcsr))
  return IRQ_NONE;

 dev_dbg(dev->dev, "interrupt source 0x%08X\n", me_intr_src(hcsr));


 me_intr_disable(dev, hcsr);
 return IRQ_WAKE_THREAD;
}
