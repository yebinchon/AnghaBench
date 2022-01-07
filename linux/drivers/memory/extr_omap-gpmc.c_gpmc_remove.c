
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct gpmc_device {int dummy; } ;


 int gpmc_free_irq (struct gpmc_device*) ;
 int gpmc_mem_exit () ;
 struct gpmc_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static int gpmc_remove(struct platform_device *pdev)
{
 struct gpmc_device *gpmc = platform_get_drvdata(pdev);

 gpmc_free_irq(gpmc);
 gpmc_mem_exit();
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
