
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int slaves; } ;
struct cpsw_common {int dma; int cpts; TYPE_2__* slaves; TYPE_1__ data; } ;
struct TYPE_4__ {scalar_t__ ndev; } ;


 int cpdma_ctlr_destroy (int ) ;
 int cpsw_remove_dt (struct platform_device*) ;
 int cpts_release (int ) ;
 struct cpsw_common* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_put_sync (int *) ;
 int unregister_netdev (scalar_t__) ;

__attribute__((used)) static int cpsw_remove(struct platform_device *pdev)
{
 struct cpsw_common *cpsw = platform_get_drvdata(pdev);
 int i, ret;

 ret = pm_runtime_get_sync(&pdev->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(&pdev->dev);
  return ret;
 }

 for (i = 0; i < cpsw->data.slaves; i++)
  if (cpsw->slaves[i].ndev)
   unregister_netdev(cpsw->slaves[i].ndev);

 cpts_release(cpsw->cpts);
 cpdma_ctlr_destroy(cpsw->dma);
 cpsw_remove_dt(pdev);
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 return 0;
}
