
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_ios {int bus_width; int timing; int vdd; int chip_select; int power_mode; int bus_mode; int clock; } ;
struct mmc_host {TYPE_1__* ops; struct mmc_ios ios; } ;
struct TYPE_2__ {int (* set_ios ) (struct mmc_host*,struct mmc_ios*) ;} ;


 int mmc_hostname (struct mmc_host*) ;
 int pr_debug (char*,int ,int ,int ,int ,int ,int ,int,int ) ;
 int stub1 (struct mmc_host*,struct mmc_ios*) ;

__attribute__((used)) static inline void mmc_set_ios(struct mmc_host *host)
{
 struct mmc_ios *ios = &host->ios;

 pr_debug("%s: clock %uHz busmode %u powermode %u cs %u Vdd %u "
  "width %u timing %u\n",
   mmc_hostname(host), ios->clock, ios->bus_mode,
   ios->power_mode, ios->chip_select, ios->vdd,
   1 << ios->bus_width, ios->timing);

 host->ops->set_ios(host, ios);
}
