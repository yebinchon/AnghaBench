
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {unsigned int vi_stride; } ;



__attribute__((used)) static inline unsigned int efx_paged_reg(struct efx_nic *efx, unsigned int page,
      unsigned int reg)
{
 return page * efx->vi_stride + reg;
}
