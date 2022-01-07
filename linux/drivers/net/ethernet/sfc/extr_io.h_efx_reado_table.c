
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_oword_t ;


 int efx_reado (struct efx_nic*,int *,unsigned int) ;

__attribute__((used)) static inline void efx_reado_table(struct efx_nic *efx, efx_oword_t *value,
         unsigned int reg, unsigned int index)
{
 efx_reado(efx, value, reg + index * sizeof(efx_oword_t));
}
