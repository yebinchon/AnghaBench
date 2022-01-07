
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_dword_t ;


 int EFX_DWORD_FIELD (int ,int ) ;
 int EFX_WORD_0 ;
 int EFX_WORD_1 ;
 int EIO ;
 int ER_DZ_BIU_MC_SFT_STATUS ;
 int efx_readd (struct efx_nic*,int *,int ) ;

__attribute__((used)) static int efx_ef10_get_warm_boot_count(struct efx_nic *efx)
{
 efx_dword_t reg;

 efx_readd(efx, &reg, ER_DZ_BIU_MC_SFT_STATUS);
 return EFX_DWORD_FIELD(reg, EFX_WORD_1) == 0xb007 ?
  EFX_DWORD_FIELD(reg, EFX_WORD_0) : -EIO;
}
