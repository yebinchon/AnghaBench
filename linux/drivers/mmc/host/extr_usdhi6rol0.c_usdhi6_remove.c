
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usdhi6_host {int mmc; int clk; int timeout_work; } ;
struct platform_device {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 int clk_disable_unprepare (int ) ;
 int mmc_free_host (int ) ;
 int mmc_remove_host (int ) ;
 struct usdhi6_host* platform_get_drvdata (struct platform_device*) ;
 int usdhi6_dma_release (struct usdhi6_host*) ;
 int usdhi6_mask_all (struct usdhi6_host*) ;

__attribute__((used)) static int usdhi6_remove(struct platform_device *pdev)
{
 struct usdhi6_host *host = platform_get_drvdata(pdev);

 mmc_remove_host(host->mmc);

 usdhi6_mask_all(host);
 cancel_delayed_work_sync(&host->timeout_work);
 usdhi6_dma_release(host);
 clk_disable_unprepare(host->clk);
 mmc_free_host(host->mmc);

 return 0;
}
