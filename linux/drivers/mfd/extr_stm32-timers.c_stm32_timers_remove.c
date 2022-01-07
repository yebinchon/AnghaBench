
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_timers {int dummy; } ;
struct platform_device {int dev; } ;


 int of_platform_depopulate (int *) ;
 struct stm32_timers* platform_get_drvdata (struct platform_device*) ;
 int stm32_timers_dma_remove (int *,struct stm32_timers*) ;

__attribute__((used)) static int stm32_timers_remove(struct platform_device *pdev)
{
 struct stm32_timers *ddata = platform_get_drvdata(pdev);





 of_platform_depopulate(&pdev->dev);
 stm32_timers_dma_remove(&pdev->dev, ddata);

 return 0;
}
