
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; scalar_t__ membase; } ;
typedef int efx_qword_t ;
struct TYPE_2__ {scalar_t__ buf_tbl_base; } ;


 int efx_sram_writeq (struct efx_nic*,scalar_t__,int *,unsigned int) ;

__attribute__((used)) static inline void efx_write_buf_tbl(struct efx_nic *efx, efx_qword_t *value,
         unsigned int index)
{
 efx_sram_writeq(efx, efx->membase + efx->type->buf_tbl_base,
   value, index);
}
