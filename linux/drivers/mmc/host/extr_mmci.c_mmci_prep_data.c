
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmci_host {scalar_t__ next_cookie; TYPE_1__* ops; } ;
struct mmc_data {int host_cookie; } ;
struct TYPE_2__ {int (* prep_data ) (struct mmci_host*,struct mmc_data*,int) ;} ;


 int stub1 (struct mmci_host*,struct mmc_data*,int) ;

int mmci_prep_data(struct mmci_host *host, struct mmc_data *data, bool next)
{
 int err;

 if (!host->ops || !host->ops->prep_data)
  return 0;

 err = host->ops->prep_data(host, data, next);

 if (next && !err)
  data->host_cookie = ++host->next_cookie < 0 ?
   1 : host->next_cookie;

 return err;
}
