
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int dummy; } ;


 int ER_DZ_MC_DB_LWRD ;
 int _efx_writed (struct efx_nic*,int ,int ) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void efx_ef10_ptp_write_host_time(struct efx_nic *efx, u32 host_time)
{
 _efx_writed(efx, cpu_to_le32(host_time), ER_DZ_MC_DB_LWRD);
}
