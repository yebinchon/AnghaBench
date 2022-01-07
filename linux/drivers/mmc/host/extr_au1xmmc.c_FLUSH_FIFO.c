
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct au1xmmc_host {int dummy; } ;


 int HOST_CONFIG2 (struct au1xmmc_host*) ;
 int SD_CONFIG2_DF ;
 int SD_CONFIG2_FF ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int mdelay (int) ;
 int wmb () ;

__attribute__((used)) static inline void FLUSH_FIFO(struct au1xmmc_host *host)
{
 u32 val = __raw_readl(HOST_CONFIG2(host));

 __raw_writel(val | SD_CONFIG2_FF, HOST_CONFIG2(host));
 wmb();
 mdelay(1);


 val &= ~SD_CONFIG2_DF;

 __raw_writel(val, HOST_CONFIG2(host));
 wmb();
}
