
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet_port {int q_index; } ;
struct netdev_queue {int dummy; } ;


 int VNET_PORT_TO_NET_DEVICE (struct vnet_port*) ;
 int __netif_tx_lock (struct netdev_queue*,int ) ;
 int __netif_tx_unlock (struct netdev_queue*) ;
 scalar_t__ likely (int ) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 int netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int smp_processor_id () ;

__attribute__((used)) static void maybe_tx_wakeup(struct vnet_port *port)
{
 struct netdev_queue *txq;

 txq = netdev_get_tx_queue(VNET_PORT_TO_NET_DEVICE(port),
      port->q_index);
 __netif_tx_lock(txq, smp_processor_id());
 if (likely(netif_tx_queue_stopped(txq)))
  netif_tx_wake_queue(txq);
 __netif_tx_unlock(txq);
}
