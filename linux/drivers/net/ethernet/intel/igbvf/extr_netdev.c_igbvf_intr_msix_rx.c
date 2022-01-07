
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ hw_addr; } ;
struct igbvf_adapter {TYPE_2__* rx_ring; scalar_t__ total_rx_packets; scalar_t__ total_rx_bytes; TYPE_1__ hw; int int_counter0; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int napi; scalar_t__ set_itr; scalar_t__ itr_register; int itr_val; } ;


 int IRQ_HANDLED ;
 int __napi_schedule (int *) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t igbvf_intr_msix_rx(int irq, void *data)
{
 struct net_device *netdev = data;
 struct igbvf_adapter *adapter = netdev_priv(netdev);

 adapter->int_counter0++;




 if (adapter->rx_ring->set_itr) {
  writel(adapter->rx_ring->itr_val,
         adapter->hw.hw_addr + adapter->rx_ring->itr_register);
  adapter->rx_ring->set_itr = 0;
 }

 if (napi_schedule_prep(&adapter->rx_ring->napi)) {
  adapter->total_rx_bytes = 0;
  adapter->total_rx_packets = 0;
  __napi_schedule(&adapter->rx_ring->napi);
 }

 return IRQ_HANDLED;
}
