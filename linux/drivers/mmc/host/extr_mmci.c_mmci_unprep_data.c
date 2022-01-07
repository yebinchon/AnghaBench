
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmci_host {TYPE_1__* ops; } ;
struct mmc_data {scalar_t__ host_cookie; } ;
struct TYPE_2__ {int (* unprep_data ) (struct mmci_host*,struct mmc_data*,int) ;} ;


 int stub1 (struct mmci_host*,struct mmc_data*,int) ;

void mmci_unprep_data(struct mmci_host *host, struct mmc_data *data,
        int err)
{
 if (host->ops && host->ops->unprep_data)
  host->ops->unprep_data(host, data, err);

 data->host_cookie = 0;
}
