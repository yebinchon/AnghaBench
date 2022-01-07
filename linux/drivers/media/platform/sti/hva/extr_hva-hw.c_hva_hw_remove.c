
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hva_dev {int irq_err; int irq_its; } ;
struct device {int dummy; } ;


 int disable_irq (int ) ;
 struct device* hva_to_dev (struct hva_dev*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;

void hva_hw_remove(struct hva_dev *hva)
{
 struct device *dev = hva_to_dev(hva);

 disable_irq(hva->irq_its);
 disable_irq(hva->irq_err);

 pm_runtime_put_autosuspend(dev);
 pm_runtime_disable(dev);
}
