
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_s3c {struct clk** clk_bus; } ;
struct sdhci_host {int dummy; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int MAX_BUS_CLK ;
 unsigned long ULONG_MAX ;
 unsigned long clk_round_rate (struct clk*,int ) ;
 struct sdhci_s3c* to_s3c (struct sdhci_host*) ;

__attribute__((used)) static unsigned int sdhci_cmu_get_min_clock(struct sdhci_host *host)
{
 struct sdhci_s3c *ourhost = to_s3c(host);
 unsigned long rate, min = ULONG_MAX;
 int src;

 for (src = 0; src < MAX_BUS_CLK; src++) {
  struct clk *clk;

  clk = ourhost->clk_bus[src];
  if (IS_ERR(clk))
   continue;

  rate = clk_round_rate(clk, 0);
  if (rate < min)
   min = rate;
 }

 return min;
}
