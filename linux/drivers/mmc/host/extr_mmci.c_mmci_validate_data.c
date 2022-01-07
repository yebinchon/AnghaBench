
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmci_host {TYPE_1__* ops; int mmc; } ;
struct mmc_data {int blksz; } ;
struct TYPE_2__ {int (* validate_data ) (struct mmci_host*,struct mmc_data*) ;} ;


 int EINVAL ;
 int dev_err (int ,char*,int ) ;
 int is_power_of_2 (int ) ;
 int mmc_dev (int ) ;
 int stub1 (struct mmci_host*,struct mmc_data*) ;

__attribute__((used)) static int mmci_validate_data(struct mmci_host *host,
         struct mmc_data *data)
{
 if (!data)
  return 0;

 if (!is_power_of_2(data->blksz)) {
  dev_err(mmc_dev(host->mmc),
   "unsupported block size (%d bytes)\n", data->blksz);
  return -EINVAL;
 }

 if (host->ops && host->ops->validate_data)
  return host->ops->validate_data(host, data);

 return 0;
}
