
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_tscadc_dev {int dev; int regmap; } ;
struct platform_device {int dev; } ;


 int REG_SE ;
 int mfd_remove_devices (int ) ;
 struct ti_tscadc_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ti_tscadc_remove(struct platform_device *pdev)
{
 struct ti_tscadc_dev *tscadc = platform_get_drvdata(pdev);

 regmap_write(tscadc->regmap, REG_SE, 0x00);

 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 mfd_remove_devices(tscadc->dev);

 return 0;
}
