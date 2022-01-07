
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int flags; int sg_len; int sg; } ;
struct alcor_sdmmc_host {int sg_miter; struct mmc_data* data; } ;


 int MMC_DATA_READ ;
 unsigned int SG_MITER_ATOMIC ;
 unsigned int SG_MITER_FROM_SG ;
 unsigned int SG_MITER_TO_SG ;
 int sg_miter_start (int *,int ,int ,unsigned int) ;

__attribute__((used)) static void alcor_prepare_sg_miter(struct alcor_sdmmc_host *host)
{
 unsigned int flags = SG_MITER_ATOMIC;
 struct mmc_data *data = host->data;

 if (data->flags & MMC_DATA_READ)
  flags |= SG_MITER_TO_SG;
 else
  flags |= SG_MITER_FROM_SG;
 sg_miter_start(&host->sg_miter, data->sg, data->sg_len, flags);
}
