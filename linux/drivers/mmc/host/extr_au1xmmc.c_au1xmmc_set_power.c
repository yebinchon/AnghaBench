
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct au1xmmc_host {int mmc; TYPE_1__* platdata; } ;
struct TYPE_2__ {int (* set_power ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static void au1xmmc_set_power(struct au1xmmc_host *host, int state)
{
 if (host->platdata && host->platdata->set_power)
  host->platdata->set_power(host->mmc, state);
}
