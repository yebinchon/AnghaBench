
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct siena_nic_data {scalar_t__* stats; } ;
struct efx_nic {struct siena_nic_data* nic_data; } ;
typedef int efx_dword_t ;


 int EFX_DWORD_0 ;
 scalar_t__ EFX_DWORD_FIELD (int ,int ) ;
 int EFX_ZERO_DWORD (int ) ;
 int EINTR ;
 int EIO ;
 unsigned int FR_CZ_MC_TREG_SMEM ;
 unsigned int MCDI_STATUS (struct efx_nic*) ;
 scalar_t__ MC_STATUS_DWORD_ASSERT ;
 size_t SIENA_STAT_rx_good_bytes ;
 size_t SIENA_STAT_tx_good_bytes ;
 int efx_readd (struct efx_nic*,int *,unsigned int) ;
 int efx_writed (struct efx_nic*,int *,unsigned int) ;

__attribute__((used)) static int siena_mcdi_poll_reboot(struct efx_nic *efx)
{
 struct siena_nic_data *nic_data = efx->nic_data;
 unsigned int addr = FR_CZ_MC_TREG_SMEM + MCDI_STATUS(efx);
 efx_dword_t reg;
 u32 value;

 efx_readd(efx, &reg, addr);
 value = EFX_DWORD_FIELD(reg, EFX_DWORD_0);

 if (value == 0)
  return 0;

 EFX_ZERO_DWORD(reg);
 efx_writed(efx, &reg, addr);




 nic_data->stats[SIENA_STAT_tx_good_bytes] = 0;
 nic_data->stats[SIENA_STAT_rx_good_bytes] = 0;

 if (value == MC_STATUS_DWORD_ASSERT)
  return -EINTR;
 else
  return -EIO;
}
