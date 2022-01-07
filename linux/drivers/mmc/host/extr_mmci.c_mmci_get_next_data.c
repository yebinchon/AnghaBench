
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmci_host {scalar_t__ next_cookie; TYPE_1__* ops; } ;
struct mmc_data {scalar_t__ host_cookie; } ;
struct TYPE_2__ {int (* get_next_data ) (struct mmci_host*,struct mmc_data*) ;} ;


 int WARN_ON (int) ;
 int stub1 (struct mmci_host*,struct mmc_data*) ;

void mmci_get_next_data(struct mmci_host *host, struct mmc_data *data)
{
 WARN_ON(data->host_cookie && data->host_cookie != host->next_cookie);

 if (host->ops && host->ops->get_next_data)
  host->ops->get_next_data(host, data);
}
