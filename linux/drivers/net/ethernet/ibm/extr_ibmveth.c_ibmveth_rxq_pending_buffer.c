
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ toggle; } ;
struct ibmveth_adapter {TYPE_1__ rx_queue; } ;


 scalar_t__ ibmveth_rxq_toggle (struct ibmveth_adapter*) ;

__attribute__((used)) static inline int ibmveth_rxq_pending_buffer(struct ibmveth_adapter *adapter)
{
 return ibmveth_rxq_toggle(adapter) == adapter->rx_queue.toggle;
}
