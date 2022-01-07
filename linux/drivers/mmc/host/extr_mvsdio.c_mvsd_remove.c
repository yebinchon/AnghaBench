
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mvsd_host {int clk; int timer; } ;
struct mmc_host {int dummy; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int del_timer_sync (int *) ;
 int mmc_free_host (struct mmc_host*) ;
 struct mvsd_host* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 int mvsd_power_down (struct mvsd_host*) ;
 struct mmc_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mvsd_remove(struct platform_device *pdev)
{
 struct mmc_host *mmc = platform_get_drvdata(pdev);

 struct mvsd_host *host = mmc_priv(mmc);

 mmc_remove_host(mmc);
 del_timer_sync(&host->timer);
 mvsd_power_down(host);

 if (!IS_ERR(host->clk))
  clk_disable_unprepare(host->clk);
 mmc_free_host(mmc);

 return 0;
}
