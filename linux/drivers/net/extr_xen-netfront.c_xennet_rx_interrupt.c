
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netfront_queue {int napi; int rx; TYPE_1__* info; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct net_device* netdev; } ;


 int IRQ_HANDLED ;
 scalar_t__ RING_HAS_UNCONSUMED_RESPONSES (int *) ;
 scalar_t__ likely (int) ;
 int napi_schedule (int *) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static irqreturn_t xennet_rx_interrupt(int irq, void *dev_id)
{
 struct netfront_queue *queue = dev_id;
 struct net_device *dev = queue->info->netdev;

 if (likely(netif_carrier_ok(dev) &&
     RING_HAS_UNCONSUMED_RESPONSES(&queue->rx)))
  napi_schedule(&queue->napi);

 return IRQ_HANDLED;
}
