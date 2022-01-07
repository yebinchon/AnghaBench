
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_rx_queue {TYPE_2__* efx; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* rx_defer_refill ) (struct efx_rx_queue*) ;} ;


 int stub1 (struct efx_rx_queue*) ;

__attribute__((used)) static inline void efx_nic_generate_fill_event(struct efx_rx_queue *rx_queue)
{
 rx_queue->efx->type->rx_defer_refill(rx_queue);
}
