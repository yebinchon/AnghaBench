
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ef4_nic {int dummy; } ;
typedef int ef4_oword_t ;


 int EF4_OWORD_FIELD (int ,int ) ;
 int FRF_AZ_ALTERA_BUILD_VER ;
 int FR_AZ_ALTERA_BUILD ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;

u32 ef4_farch_fpga_ver(struct ef4_nic *efx)
{
 ef4_oword_t altera_build;
 ef4_reado(efx, &altera_build, FR_AZ_ALTERA_BUILD);
 return EF4_OWORD_FIELD(altera_build, FRF_AZ_ALTERA_BUILD_VER);
}
