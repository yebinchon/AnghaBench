
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ax_device {TYPE_2__* plat; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int (* check_irq ) (struct platform_device*) ;} ;


 int IRQ_NONE ;
 int ax_ei_interrupt (int,void*) ;
 int stub1 (struct platform_device*) ;
 struct ax_device* to_ax_dev (struct net_device*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static irqreturn_t ax_ei_interrupt_filtered(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct ax_device *ax = to_ax_dev(dev);
 struct platform_device *pdev = to_platform_device(dev->dev.parent);

 if (!ax->plat->check_irq(pdev))
  return IRQ_NONE;

 return ax_ei_interrupt(irq, dev_id);
}
