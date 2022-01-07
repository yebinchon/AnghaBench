
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fimc_is_i2c {int adapter; } ;


 int i2c_del_adapter (int *) ;
 struct fimc_is_i2c* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int fimc_is_i2c_remove(struct platform_device *pdev)
{
 struct fimc_is_i2c *isp_i2c = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);
 i2c_del_adapter(&isp_i2c->adapter);

 return 0;
}
