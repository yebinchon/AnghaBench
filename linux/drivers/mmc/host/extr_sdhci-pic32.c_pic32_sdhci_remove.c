
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct platform_device {int dummy; } ;
struct pic32_sdhci_priv {int sys_clk; int base_clk; } ;


 scalar_t__ SDHCI_INT_STATUS ;
 int clk_disable_unprepare (int ) ;
 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 scalar_t__ readl (scalar_t__) ;
 int sdhci_pltfm_free (struct platform_device*) ;
 struct pic32_sdhci_priv* sdhci_priv (struct sdhci_host*) ;
 int sdhci_remove_host (struct sdhci_host*,int) ;

__attribute__((used)) static int pic32_sdhci_remove(struct platform_device *pdev)
{
 struct sdhci_host *host = platform_get_drvdata(pdev);
 struct pic32_sdhci_priv *sdhci_pdata = sdhci_priv(host);
 u32 scratch;

 scratch = readl(host->ioaddr + SDHCI_INT_STATUS);
 sdhci_remove_host(host, scratch == (u32)~0);
 clk_disable_unprepare(sdhci_pdata->base_clk);
 clk_disable_unprepare(sdhci_pdata->sys_clk);
 sdhci_pltfm_free(pdev);

 return 0;
}
