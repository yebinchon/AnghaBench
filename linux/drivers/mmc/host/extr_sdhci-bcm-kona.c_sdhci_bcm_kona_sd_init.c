
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 int KONA_SDHOST_CORECTRL ;
 int KONA_SDHOST_COREIMR ;
 unsigned int KONA_SDHOST_EN ;
 unsigned int KONA_SDHOST_IP ;
 unsigned int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,unsigned int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void sdhci_bcm_kona_sd_init(struct sdhci_host *host)
{
 unsigned int val;


 val = sdhci_readl(host, KONA_SDHOST_COREIMR);
 val |= KONA_SDHOST_IP;
 sdhci_writel(host, val, KONA_SDHOST_COREIMR);


 val = sdhci_readl(host, KONA_SDHOST_CORECTRL);
 val |= KONA_SDHOST_EN;







 usleep_range(1000, 5000);
 sdhci_writel(host, val, KONA_SDHOST_CORECTRL);
}
