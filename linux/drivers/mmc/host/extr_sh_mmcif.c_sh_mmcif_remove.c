
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mmcif_host {int dying; int mmc; int clk; int timeout_work; int addr; } ;
struct platform_device {int dev; } ;


 int MASK_ALL ;
 int MMCIF_CE_INT_MASK ;
 int cancel_delayed_work_sync (int *) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_pm_qos_hide_latency_limit (int *) ;
 int mmc_free_host (int ) ;
 int mmc_remove_host (int ) ;
 struct sh_mmcif_host* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int sh_mmcif_writel (int ,int ,int ) ;

__attribute__((used)) static int sh_mmcif_remove(struct platform_device *pdev)
{
 struct sh_mmcif_host *host = platform_get_drvdata(pdev);

 host->dying = 1;
 clk_prepare_enable(host->clk);
 pm_runtime_get_sync(&pdev->dev);

 dev_pm_qos_hide_latency_limit(&pdev->dev);

 mmc_remove_host(host->mmc);
 sh_mmcif_writel(host->addr, MMCIF_CE_INT_MASK, MASK_ALL);






 cancel_delayed_work_sync(&host->timeout_work);

 clk_disable_unprepare(host->clk);
 mmc_free_host(host->mmc);
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
