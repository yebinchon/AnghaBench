
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct au1xmmc_host {int dummy; } ;


 int HOST_STATUS (struct au1xmmc_host*) ;
 int __raw_readl (int ) ;
 int au1xmmc_data_complete (struct au1xmmc_host*,int ) ;

__attribute__((used)) static void au1xmmc_tasklet_data(unsigned long param)
{
 struct au1xmmc_host *host = (struct au1xmmc_host *)param;

 u32 status = __raw_readl(HOST_STATUS(host));
 au1xmmc_data_complete(host, status);
}
