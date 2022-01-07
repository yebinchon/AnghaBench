
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int dummy; } ;


 scalar_t__ FR_CZ_MC_TREG_SMEM ;
 scalar_t__ MC_SMEM_P0_PTP_TIME_OFST ;
 int _efx_writed (struct efx_nic*,int ,scalar_t__) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void siena_ptp_write_host_time(struct efx_nic *efx, u32 host_time)
{
 _efx_writed(efx, cpu_to_le32(host_time),
      FR_CZ_MC_TREG_SMEM + MC_SMEM_P0_PTP_TIME_OFST);
}
