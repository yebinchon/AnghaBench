
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {TYPE_1__* bus_ops; scalar_t__ bus_dead; int card; } ;
struct TYPE_2__ {int (* sw_reset ) (struct mmc_host*) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int mmc_bus_get (struct mmc_host*) ;
 int mmc_bus_put (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_warn (char*,int ,int) ;
 int stub1 (struct mmc_host*) ;

int mmc_sw_reset(struct mmc_host *host)
{
 int ret;

 if (!host->card)
  return -EINVAL;

 mmc_bus_get(host);
 if (!host->bus_ops || host->bus_dead || !host->bus_ops->sw_reset) {
  mmc_bus_put(host);
  return -EOPNOTSUPP;
 }

 ret = host->bus_ops->sw_reset(host);
 mmc_bus_put(host);

 if (ret)
  pr_warn("%s: tried to SW reset card, got error %d\n",
   mmc_hostname(host), ret);

 return ret;
}
