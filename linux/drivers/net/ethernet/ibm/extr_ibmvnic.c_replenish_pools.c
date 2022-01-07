
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibmvnic_adapter {TYPE_2__* rx_pool; TYPE_1__* login_rsp_buf; int replenish_task_cycles; } ;
struct TYPE_4__ {scalar_t__ active; } ;
struct TYPE_3__ {int num_rxadd_subcrqs; } ;


 int be32_to_cpu (int ) ;
 int replenish_rx_pool (struct ibmvnic_adapter*,TYPE_2__*) ;

__attribute__((used)) static void replenish_pools(struct ibmvnic_adapter *adapter)
{
 int i;

 adapter->replenish_task_cycles++;
 for (i = 0; i < be32_to_cpu(adapter->login_rsp_buf->num_rxadd_subcrqs);
      i++) {
  if (adapter->rx_pool[i].active)
   replenish_rx_pool(adapter, &adapter->rx_pool[i]);
 }
}
