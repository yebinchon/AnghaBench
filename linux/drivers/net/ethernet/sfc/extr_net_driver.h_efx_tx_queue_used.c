
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_tx_queue {int queue; TYPE_2__* efx; } ;
struct TYPE_4__ {TYPE_1__* net_dev; } ;
struct TYPE_3__ {int num_tc; } ;


 int EFX_TXQ_TYPE_HIGHPRI ;

__attribute__((used)) static inline bool efx_tx_queue_used(struct efx_tx_queue *tx_queue)
{
 return !(tx_queue->efx->net_dev->num_tc < 2 &&
   tx_queue->queue & EFX_TXQ_TYPE_HIGHPRI);
}
