
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ena_napi {int napi; TYPE_2__* rx_ring; TYPE_1__* tx_ring; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int first_interrupt; } ;
struct TYPE_3__ {int first_interrupt; } ;


 int IRQ_HANDLED ;
 int napi_schedule_irqoff (int *) ;

__attribute__((used)) static irqreturn_t ena_intr_msix_io(int irq, void *data)
{
 struct ena_napi *ena_napi = data;

 ena_napi->tx_ring->first_interrupt = 1;
 ena_napi->rx_ring->first_interrupt = 1;

 napi_schedule_irqoff(&ena_napi->napi);

 return IRQ_HANDLED;
}
