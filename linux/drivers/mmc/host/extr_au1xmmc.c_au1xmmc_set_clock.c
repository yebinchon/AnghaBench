
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct au1xmmc_host {int clk; } ;


 int HOST_CONFIG (struct au1xmmc_host*) ;
 unsigned int SD_CONFIG_DE ;
 unsigned int SD_CONFIG_DIV ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;
 unsigned int clk_get_rate (int ) ;
 int wmb () ;

__attribute__((used)) static void au1xmmc_set_clock(struct au1xmmc_host *host, int rate)
{
 unsigned int pbus = clk_get_rate(host->clk);
 unsigned int divisor = ((pbus / rate) / 2) - 1;
 u32 config;

 config = __raw_readl(HOST_CONFIG(host));

 config &= ~(SD_CONFIG_DIV);
 config |= (divisor & SD_CONFIG_DIV) | SD_CONFIG_DE;

 __raw_writel(config, HOST_CONFIG(host));
 wmb();
}
