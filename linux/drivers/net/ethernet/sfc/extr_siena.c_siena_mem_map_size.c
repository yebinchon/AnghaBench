
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 unsigned int FR_CZ_MC_TREG_SMEM ;
 int FR_CZ_MC_TREG_SMEM_ROWS ;
 int FR_CZ_MC_TREG_SMEM_STEP ;

__attribute__((used)) static unsigned int siena_mem_map_size(struct efx_nic *efx)
{
 return FR_CZ_MC_TREG_SMEM +
  FR_CZ_MC_TREG_SMEM_STEP * FR_CZ_MC_TREG_SMEM_ROWS;
}
