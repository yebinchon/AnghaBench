
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct lis3lv02d {scalar_t__ irq_cfg; int idev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_LINE0 ;
 scalar_t__ LIS3_IRQ1_CLICK ;
 scalar_t__ LIS3_IRQ1_DATA_READY ;
 scalar_t__ LIS3_IRQ1_MASK ;
 int lis302dl_data_ready (struct lis3lv02d*,int ) ;
 int lis302dl_interrupt_handle_click (struct lis3lv02d*) ;
 int lis3lv02d_joystick_poll (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t lis302dl_interrupt_thread1_8b(int irq, void *data)
{
 struct lis3lv02d *lis3 = data;
 u8 irq_cfg = lis3->irq_cfg & LIS3_IRQ1_MASK;

 if (irq_cfg == LIS3_IRQ1_CLICK)
  lis302dl_interrupt_handle_click(lis3);
 else if (unlikely(irq_cfg == LIS3_IRQ1_DATA_READY))
  lis302dl_data_ready(lis3, IRQ_LINE0);
 else
  lis3lv02d_joystick_poll(lis3->idev);

 return IRQ_HANDLED;
}
