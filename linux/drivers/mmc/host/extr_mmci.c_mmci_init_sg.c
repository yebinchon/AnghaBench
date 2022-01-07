
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int sg_miter; } ;
struct mmc_data {int flags; int sg_len; int sg; } ;


 int MMC_DATA_READ ;
 unsigned int SG_MITER_ATOMIC ;
 unsigned int SG_MITER_FROM_SG ;
 unsigned int SG_MITER_TO_SG ;
 int sg_miter_start (int *,int ,int ,unsigned int) ;

__attribute__((used)) static void mmci_init_sg(struct mmci_host *host, struct mmc_data *data)
{
 unsigned int flags = SG_MITER_ATOMIC;

 if (data->flags & MMC_DATA_READ)
  flags |= SG_MITER_TO_SG;
 else
  flags |= SG_MITER_FROM_SG;

 sg_miter_start(&host->sg_miter, data->sg, data->sg_len, flags);
}
