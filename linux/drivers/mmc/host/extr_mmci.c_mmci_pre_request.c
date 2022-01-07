
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int dummy; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int host_cookie; } ;


 int WARN_ON (int ) ;
 struct mmci_host* mmc_priv (struct mmc_host*) ;
 int mmci_prep_data (struct mmci_host*,struct mmc_data*,int) ;
 scalar_t__ mmci_validate_data (struct mmci_host*,struct mmc_data*) ;

__attribute__((used)) static void mmci_pre_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct mmci_host *host = mmc_priv(mmc);
 struct mmc_data *data = mrq->data;

 if (!data)
  return;

 WARN_ON(data->host_cookie);

 if (mmci_validate_data(host, data))
  return;

 mmci_prep_data(host, data, 1);
}
