
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct net_device {int dummy; } ;


 int free_candev (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int unregister_flexcandev (struct net_device*) ;

__attribute__((used)) static int flexcan_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);

 unregister_flexcandev(dev);
 pm_runtime_disable(&pdev->dev);
 free_candev(dev);

 return 0;
}
