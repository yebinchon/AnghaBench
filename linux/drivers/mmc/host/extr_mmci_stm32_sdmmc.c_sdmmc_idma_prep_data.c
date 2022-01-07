
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {scalar_t__ next_cookie; } ;
struct mmc_data {scalar_t__ host_cookie; } ;


 int _sdmmc_idma_prep_data (struct mmci_host*,struct mmc_data*) ;

__attribute__((used)) static int sdmmc_idma_prep_data(struct mmci_host *host,
    struct mmc_data *data, bool next)
{

 if (!next && data->host_cookie == host->next_cookie)
  return 0;

 return _sdmmc_idma_prep_data(host, data);
}
