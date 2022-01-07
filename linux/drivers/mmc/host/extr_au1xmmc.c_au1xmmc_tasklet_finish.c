
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au1xmmc_host {int dummy; } ;


 int au1xmmc_finish_request (struct au1xmmc_host*) ;

__attribute__((used)) static void au1xmmc_tasklet_finish(unsigned long param)
{
 struct au1xmmc_host *host = (struct au1xmmc_host *) param;
 au1xmmc_finish_request(host);
}
