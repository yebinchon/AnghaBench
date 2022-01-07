
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s3cmci_host {int real_rate; int clk_rate; int clk_div; int prescaler; scalar_t__ base; } ;
struct mmc_ios {scalar_t__ clock; } ;


 scalar_t__ S3C2410_SDIPRE ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s3cmci_set_clk(struct s3cmci_host *host, struct mmc_ios *ios)
{
 u32 mci_psc;


 for (mci_psc = 0; mci_psc < 255; mci_psc++) {
  host->real_rate = host->clk_rate / (host->clk_div*(mci_psc+1));

  if (host->real_rate <= ios->clock)
   break;
 }

 if (mci_psc > 255)
  mci_psc = 255;

 host->prescaler = mci_psc;
 writel(host->prescaler, host->base + S3C2410_SDIPRE);


 if (ios->clock == 0)
  host->real_rate = 0;
}
