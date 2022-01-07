
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_dword_t ;


 int efx_paged_reg (struct efx_nic*,unsigned int,unsigned int) ;
 int efx_writed (struct efx_nic*,int const*,int ) ;

__attribute__((used)) static inline void
_efx_writed_page(struct efx_nic *efx, const efx_dword_t *value,
   unsigned int reg, unsigned int page)
{
 efx_writed(efx, value, efx_paged_reg(efx, page, reg));
}
