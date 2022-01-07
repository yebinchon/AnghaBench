
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {TYPE_1__* type; scalar_t__ membase; } ;
typedef int ef4_qword_t ;
struct TYPE_2__ {scalar_t__ buf_tbl_base; } ;


 int ef4_sram_writeq (struct ef4_nic*,scalar_t__,int *,unsigned int) ;

__attribute__((used)) static inline void ef4_write_buf_tbl(struct ef4_nic *efx, ef4_qword_t *value,
         unsigned int index)
{
 ef4_sram_writeq(efx, efx->membase + efx->type->buf_tbl_base,
   value, index);
}
