
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct isc_device {int hclock; int ispck; int v4l2_dev; } ;


 int clk_disable_unprepare (int ) ;
 int isc_clk_cleanup (struct isc_device*) ;
 int isc_subdev_cleanup (struct isc_device*) ;
 struct isc_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int atmel_isc_remove(struct platform_device *pdev)
{
 struct isc_device *isc = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);

 isc_subdev_cleanup(isc);

 v4l2_device_unregister(&isc->v4l2_dev);

 clk_disable_unprepare(isc->ispck);
 clk_disable_unprepare(isc->hclock);

 isc_clk_cleanup(isc);

 return 0;
}
