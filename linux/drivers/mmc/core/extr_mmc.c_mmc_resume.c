
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_enable (int *) ;

__attribute__((used)) static int mmc_resume(struct mmc_host *host)
{
 pm_runtime_enable(&host->card->dev);
 return 0;
}
