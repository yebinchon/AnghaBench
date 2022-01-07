
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hns_nic_ring_data {int napi; TYPE_5__* ring; } ;
typedef int irqreturn_t ;
struct TYPE_10__ {TYPE_4__* q; } ;
struct TYPE_9__ {TYPE_3__* handle; } ;
struct TYPE_8__ {TYPE_2__* dev; } ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {int (* toggle_ring_irq ) (TYPE_5__*,int) ;} ;


 int IRQ_HANDLED ;
 int napi_schedule (int *) ;
 int stub1 (TYPE_5__*,int) ;

__attribute__((used)) static irqreturn_t hns_irq_handle(int irq, void *dev)
{
 struct hns_nic_ring_data *ring_data = (struct hns_nic_ring_data *)dev;

 ring_data->ring->q->handle->dev->ops->toggle_ring_irq(
  ring_data->ring, 1);
 napi_schedule(&ring_data->napi);

 return IRQ_HANDLED;
}
