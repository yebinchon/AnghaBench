
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct meson_mx_mmc_host {int mmc; int core_clk; int cfg_div_clk; int cmd_timeout; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int del_timer_sync (int *) ;
 struct device* mmc_dev (int ) ;
 int mmc_free_host (int ) ;
 int mmc_remove_host (int ) ;
 int of_platform_device_destroy (struct device*,int *) ;
 struct meson_mx_mmc_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int meson_mx_mmc_remove(struct platform_device *pdev)
{
 struct meson_mx_mmc_host *host = platform_get_drvdata(pdev);
 struct device *slot_dev = mmc_dev(host->mmc);

 del_timer_sync(&host->cmd_timeout);

 mmc_remove_host(host->mmc);

 of_platform_device_destroy(slot_dev, ((void*)0));

 clk_disable_unprepare(host->cfg_div_clk);
 clk_disable_unprepare(host->core_clk);

 mmc_free_host(host->mmc);

 return 0;
}
