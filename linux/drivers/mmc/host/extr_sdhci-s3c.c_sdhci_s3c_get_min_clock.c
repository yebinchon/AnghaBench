
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_s3c {int* clk_rates; } ;
struct sdhci_host {int dummy; } ;


 int MAX_BUS_CLK ;
 unsigned long ULONG_MAX ;
 struct sdhci_s3c* to_s3c (struct sdhci_host*) ;

__attribute__((used)) static unsigned int sdhci_s3c_get_min_clock(struct sdhci_host *host)
{
 struct sdhci_s3c *ourhost = to_s3c(host);
 unsigned long rate, min = ULONG_MAX;
 int src;

 for (src = 0; src < MAX_BUS_CLK; src++) {
  rate = ourhost->clk_rates[src] / 256;
  if (!rate)
   continue;
  if (rate < min)
   min = rate;
 }

 return min;
}
