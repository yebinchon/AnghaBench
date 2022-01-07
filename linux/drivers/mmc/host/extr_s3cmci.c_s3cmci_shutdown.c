
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3cmci_host {scalar_t__ irq_cd; int clk; } ;
struct platform_device {int dummy; } ;
struct mmc_host {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int free_irq (scalar_t__,struct s3cmci_host*) ;
 struct s3cmci_host* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 struct mmc_host* platform_get_drvdata (struct platform_device*) ;
 int s3cmci_cpufreq_deregister (struct s3cmci_host*) ;
 int s3cmci_debugfs_remove (struct s3cmci_host*) ;

__attribute__((used)) static void s3cmci_shutdown(struct platform_device *pdev)
{
 struct mmc_host *mmc = platform_get_drvdata(pdev);
 struct s3cmci_host *host = mmc_priv(mmc);

 if (host->irq_cd >= 0)
  free_irq(host->irq_cd, host);

 s3cmci_debugfs_remove(host);
 s3cmci_cpufreq_deregister(host);
 mmc_remove_host(mmc);
 clk_disable_unprepare(host->clk);
}
