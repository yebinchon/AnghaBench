
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 int EFAULT ;
 int KONA_SDHOST_CORECTRL ;
 unsigned int KONA_SDHOST_RESET ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int pr_err (char*) ;
 unsigned int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,unsigned int,int ) ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int sdhci_bcm_kona_sd_reset(struct sdhci_host *host)
{
 unsigned int val;
 unsigned long timeout;


 timeout = jiffies + msecs_to_jiffies(100);


 val = sdhci_readl(host, KONA_SDHOST_CORECTRL);
 val |= KONA_SDHOST_RESET;
 sdhci_writel(host, val, KONA_SDHOST_CORECTRL);

 while (!(sdhci_readl(host, KONA_SDHOST_CORECTRL) & KONA_SDHOST_RESET)) {
  if (time_is_before_jiffies(timeout)) {
   pr_err("Error: sd host is stuck in reset!!!\n");
   return -EFAULT;
  }
 }


 val = sdhci_readl(host, KONA_SDHOST_CORECTRL);
 val &= ~KONA_SDHOST_RESET;







 usleep_range(1000, 5000);
 sdhci_writel(host, val, KONA_SDHOST_CORECTRL);

 return 0;
}
