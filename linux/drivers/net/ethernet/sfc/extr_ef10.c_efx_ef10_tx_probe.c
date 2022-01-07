
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct efx_tx_queue {int ptr_mask; TYPE_1__ txd; int efx; } ;
typedef int efx_qword_t ;


 int GFP_KERNEL ;
 int efx_nic_alloc_buffer (int ,int *,int,int ) ;

__attribute__((used)) static int efx_ef10_tx_probe(struct efx_tx_queue *tx_queue)
{
 return efx_nic_alloc_buffer(tx_queue->efx, &tx_queue->txd.buf,
        (tx_queue->ptr_mask + 1) *
        sizeof(efx_qword_t),
        GFP_KERNEL);
}
