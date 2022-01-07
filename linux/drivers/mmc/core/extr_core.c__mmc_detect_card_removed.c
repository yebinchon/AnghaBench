
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_host {int card; TYPE_2__* ops; TYPE_1__* bus_ops; } ;
struct TYPE_4__ {int (* get_cd ) (struct mmc_host*) ;} ;
struct TYPE_3__ {int (* alive ) (struct mmc_host*) ;} ;


 scalar_t__ mmc_card_removed (int ) ;
 int mmc_card_set_removed (int ) ;
 int mmc_detect_change (struct mmc_host*,int ) ;
 int mmc_hostname (struct mmc_host*) ;
 int msecs_to_jiffies (int) ;
 int pr_debug (char*,int ) ;
 int stub1 (struct mmc_host*) ;
 int stub2 (struct mmc_host*) ;

int _mmc_detect_card_removed(struct mmc_host *host)
{
 int ret;

 if (!host->card || mmc_card_removed(host->card))
  return 1;

 ret = host->bus_ops->alive(host);
 if (!ret && host->ops->get_cd && !host->ops->get_cd(host)) {
  mmc_detect_change(host, msecs_to_jiffies(200));
  pr_debug("%s: card removed too slowly\n", mmc_hostname(host));
 }

 if (ret) {
  mmc_card_set_removed(host->card);
  pr_debug("%s: card remove detected\n", mmc_hostname(host));
 }

 return ret;
}
