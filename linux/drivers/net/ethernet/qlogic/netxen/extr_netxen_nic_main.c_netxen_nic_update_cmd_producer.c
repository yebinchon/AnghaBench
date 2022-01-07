
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_host_tx_ring {int producer; int crb_cmd_producer; } ;
struct netxen_adapter {int dummy; } ;


 int NXWRIO (struct netxen_adapter*,int ,int ) ;

void
netxen_nic_update_cmd_producer(struct netxen_adapter *adapter,
  struct nx_host_tx_ring *tx_ring)
{
 NXWRIO(adapter, tx_ring->crb_cmd_producer, tx_ring->producer);
}
