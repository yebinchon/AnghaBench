
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mmc_data {int blksz; int blocks; } ;
struct mmc_command {scalar_t__ opcode; } ;
struct cvm_mmc_host {scalar_t__ n_minus_one; } ;


 scalar_t__ MMC_WRITE_MULTIPLE_BLOCK ;
 int l2c_lock_mem_region (scalar_t__,int) ;

__attribute__((used)) static void octeon_mmc_dmar_fixup(struct cvm_mmc_host *host,
      struct mmc_command *cmd,
      struct mmc_data *data,
      u64 addr)
{
 if (cmd->opcode != MMC_WRITE_MULTIPLE_BLOCK)
  return;
 if (data->blksz * data->blocks <= 1024)
  return;

 host->n_minus_one = addr + (data->blksz * data->blocks) - 1024;
 l2c_lock_mem_region(host->n_minus_one, 512);
}
