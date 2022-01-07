
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct efx_tx_queue {unsigned int write_count; unsigned int ptr_mask; int queue; int efx; } ;
typedef int efx_qword_t ;
struct TYPE_4__ {int * qword; } ;
typedef TYPE_1__ efx_oword_t ;


 int EFX_POPULATE_OWORD_1 (TYPE_1__,int ,unsigned int) ;
 int ERF_DZ_TX_DESC_WPTR ;
 int ER_DZ_TX_DESC_UPD ;
 int efx_writeo_page (int ,TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline void efx_ef10_push_tx_desc(struct efx_tx_queue *tx_queue,
      const efx_qword_t *txd)
{
 unsigned int write_ptr;
 efx_oword_t reg;

 write_ptr = tx_queue->write_count & tx_queue->ptr_mask;
 EFX_POPULATE_OWORD_1(reg, ERF_DZ_TX_DESC_WPTR, write_ptr);
 reg.qword[0] = *txd;
 efx_writeo_page(tx_queue->efx, &reg,
   ER_DZ_TX_DESC_UPD, tx_queue->queue);
}
