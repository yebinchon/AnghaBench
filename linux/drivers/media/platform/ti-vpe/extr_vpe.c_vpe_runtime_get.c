
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int WARN_ON (int) ;
 int dev_dbg (int *,char*) ;
 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static int vpe_runtime_get(struct platform_device *pdev)
{
 int r;

 dev_dbg(&pdev->dev, "vpe_runtime_get\n");

 r = pm_runtime_get_sync(&pdev->dev);
 WARN_ON(r < 0);
 return r < 0 ? r : 0;
}
