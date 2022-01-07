
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mmc_data {int sg_len; } ;
struct cvm_mmc_host {scalar_t__ use_sg; } ;


 int prepare_dma_sg (struct cvm_mmc_host*,struct mmc_data*) ;
 int prepare_dma_single (struct cvm_mmc_host*,struct mmc_data*) ;

__attribute__((used)) static u64 prepare_dma(struct cvm_mmc_host *host, struct mmc_data *data)
{
 if (host->use_sg && data->sg_len > 1)
  return prepare_dma_sg(host, data);
 else
  return prepare_dma_single(host, data);
}
