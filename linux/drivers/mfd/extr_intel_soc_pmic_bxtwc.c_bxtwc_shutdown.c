
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct intel_soc_pmic {int irq; } ;


 struct intel_soc_pmic* dev_get_drvdata (int *) ;
 int disable_irq (int ) ;

__attribute__((used)) static void bxtwc_shutdown(struct platform_device *pdev)
{
 struct intel_soc_pmic *pmic = dev_get_drvdata(&pdev->dev);

 disable_irq(pmic->irq);
}
