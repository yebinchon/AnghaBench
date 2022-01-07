
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ab8500_gpadc {scalar_t__ irq_sw; scalar_t__ irq_hw; int dev; int regu; int node; } ;


 int free_irq (scalar_t__,struct ab8500_gpadc*) ;
 int list_del (int *) ;
 struct ab8500_gpadc* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int pm_runtime_set_suspended (int ) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int ab8500_gpadc_remove(struct platform_device *pdev)
{
 struct ab8500_gpadc *gpadc = platform_get_drvdata(pdev);


 list_del(&gpadc->node);

 if (gpadc->irq_sw >= 0)
  free_irq(gpadc->irq_sw, gpadc);
 if (gpadc->irq_hw >= 0)
  free_irq(gpadc->irq_hw, gpadc);

 pm_runtime_get_sync(gpadc->dev);
 pm_runtime_disable(gpadc->dev);

 regulator_disable(gpadc->regu);

 pm_runtime_set_suspended(gpadc->dev);

 pm_runtime_put_noidle(gpadc->dev);

 return 0;
}
