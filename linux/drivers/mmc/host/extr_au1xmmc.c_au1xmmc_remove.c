
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct au1xmmc_host {int flags; TYPE_2__* mmc; int ioarea; scalar_t__ iobase; int irq; int clk; int finish_task; int data_task; TYPE_1__* platdata; } ;
struct TYPE_6__ {int caps; } ;
struct TYPE_5__ {int (* cd_setup ) (TYPE_2__*,int ) ;scalar_t__ led; } ;


 int HOST_CONFIG (struct au1xmmc_host*) ;
 int HOST_CONFIG2 (struct au1xmmc_host*) ;
 int HOST_ENABLE (struct au1xmmc_host*) ;
 int HOST_F_DBDMA ;
 int MMC_CAP_NEEDS_POLL ;
 int __raw_writel (int ,int ) ;
 int au1xmmc_dbdma_shutdown (struct au1xmmc_host*) ;
 int au1xmmc_set_power (struct au1xmmc_host*,int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int free_irq (int ,struct au1xmmc_host*) ;
 int iounmap (void*) ;
 int kfree (int ) ;
 int led_classdev_unregister (scalar_t__) ;
 int mmc_free_host (TYPE_2__*) ;
 int mmc_remove_host (TYPE_2__*) ;
 struct au1xmmc_host* platform_get_drvdata (struct platform_device*) ;
 int release_resource (int ) ;
 int stub1 (TYPE_2__*,int ) ;
 int tasklet_kill (int *) ;
 int wmb () ;

__attribute__((used)) static int au1xmmc_remove(struct platform_device *pdev)
{
 struct au1xmmc_host *host = platform_get_drvdata(pdev);

 if (host) {
  mmc_remove_host(host->mmc);






  if (host->platdata && host->platdata->cd_setup &&
      !(host->mmc->caps & MMC_CAP_NEEDS_POLL))
   host->platdata->cd_setup(host->mmc, 0);

  __raw_writel(0, HOST_ENABLE(host));
  __raw_writel(0, HOST_CONFIG(host));
  __raw_writel(0, HOST_CONFIG2(host));
  wmb();

  tasklet_kill(&host->data_task);
  tasklet_kill(&host->finish_task);

  if (host->flags & HOST_F_DBDMA)
   au1xmmc_dbdma_shutdown(host);

  au1xmmc_set_power(host, 0);

  clk_disable_unprepare(host->clk);
  clk_put(host->clk);

  free_irq(host->irq, host);
  iounmap((void *)host->iobase);
  release_resource(host->ioarea);
  kfree(host->ioarea);

  mmc_free_host(host->mmc);
 }
 return 0;
}
