
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct au1xmmc_host {int dummy; } ;


 int HOST_CONFIG (struct au1xmmc_host*) ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 int wmb () ;

__attribute__((used)) static inline void IRQ_ON(struct au1xmmc_host *host, u32 mask)
{
 u32 val = __raw_readl(HOST_CONFIG(host));
 val |= mask;
 __raw_writel(val, HOST_CONFIG(host));
 wmb();
}
