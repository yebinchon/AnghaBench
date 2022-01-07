
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int dummy; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int host_cookie; } ;


 struct mmci_host* mmc_priv (struct mmc_host*) ;
 int mmci_unprep_data (struct mmci_host*,struct mmc_data*,int) ;

__attribute__((used)) static void mmci_post_request(struct mmc_host *mmc, struct mmc_request *mrq,
         int err)
{
 struct mmci_host *host = mmc_priv(mmc);
 struct mmc_data *data = mrq->data;

 if (!data || !data->host_cookie)
  return;

 mmci_unprep_data(host, data, err);
}
