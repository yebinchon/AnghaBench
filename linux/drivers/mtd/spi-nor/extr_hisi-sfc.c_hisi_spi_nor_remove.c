
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct hifmc_host {int clk; int lock; } ;


 int clk_disable_unprepare (int ) ;
 int hisi_spi_nor_unregister_all (struct hifmc_host*) ;
 int mutex_destroy (int *) ;
 struct hifmc_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int hisi_spi_nor_remove(struct platform_device *pdev)
{
 struct hifmc_host *host = platform_get_drvdata(pdev);

 hisi_spi_nor_unregister_all(host);
 mutex_destroy(&host->lock);
 clk_disable_unprepare(host->clk);
 return 0;
}
