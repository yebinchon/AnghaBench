
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dw_mci_pltfm_remove (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;

__attribute__((used)) static int dw_mci_rockchip_remove(struct platform_device *pdev)
{
 pm_runtime_get_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);

 return dw_mci_pltfm_remove(pdev);
}
