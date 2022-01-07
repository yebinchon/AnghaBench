
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_intrs; } ;
struct vmxnet3_adapter {int num_tx_queues; int num_rx_queues; TYPE_1__ intr; } ;
struct net_device {int dummy; } ;


 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
vmxnet3_get_regs_len(struct net_device *netdev)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);

 return ((9 +
  (1 + adapter->intr.num_intrs) +
  (1 + adapter->num_tx_queues * 17 ) +
  (1 + adapter->num_rx_queues * 23 )) *
  sizeof(u32));
}
