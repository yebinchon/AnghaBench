
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct davinci_mdio_data {scalar_t__ bus; } ;


 int mdiobus_unregister (scalar_t__) ;
 struct davinci_mdio_data* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_dont_use_autosuspend (int *) ;

__attribute__((used)) static int davinci_mdio_remove(struct platform_device *pdev)
{
 struct davinci_mdio_data *data = platform_get_drvdata(pdev);

 if (data->bus)
  mdiobus_unregister(data->bus);

 pm_runtime_dont_use_autosuspend(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
