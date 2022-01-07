
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {scalar_t__ ioaddr; } ;
struct platform_device {int dummy; } ;
struct f_sdhost_priv {int clk; int clk_iface; } ;


 scalar_t__ SDHCI_INT_STATUS ;
 int clk_disable_unprepare (int ) ;
 struct sdhci_host* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int readl (scalar_t__) ;
 int sdhci_free_host (struct sdhci_host*) ;
 struct f_sdhost_priv* sdhci_priv (struct sdhci_host*) ;
 int sdhci_remove_host (struct sdhci_host*,int) ;

__attribute__((used)) static int sdhci_f_sdh30_remove(struct platform_device *pdev)
{
 struct sdhci_host *host = platform_get_drvdata(pdev);
 struct f_sdhost_priv *priv = sdhci_priv(host);

 sdhci_remove_host(host, readl(host->ioaddr + SDHCI_INT_STATUS) ==
     0xffffffff);

 clk_disable_unprepare(priv->clk_iface);
 clk_disable_unprepare(priv->clk);

 sdhci_free_host(host);
 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
