
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_fcp_device {int list; } ;
struct platform_device {int dev; } ;


 int fcp_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rcar_fcp_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int rcar_fcp_remove(struct platform_device *pdev)
{
 struct rcar_fcp_device *fcp = platform_get_drvdata(pdev);

 mutex_lock(&fcp_lock);
 list_del(&fcp->list);
 mutex_unlock(&fcp_lock);

 pm_runtime_disable(&pdev->dev);

 return 0;
}
