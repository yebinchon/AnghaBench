
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct exynos_lpass {int top; } ;


 int exynos_lpass_disable (struct exynos_lpass*) ;
 struct exynos_lpass* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;
 int regmap_exit (int ) ;

__attribute__((used)) static int exynos_lpass_remove(struct platform_device *pdev)
{
 struct exynos_lpass *lpass = platform_get_drvdata(pdev);

 exynos_lpass_disable(lpass);
 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  exynos_lpass_disable(lpass);
 regmap_exit(lpass->top);

 return 0;
}
