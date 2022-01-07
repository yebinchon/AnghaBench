
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibmvnic_adapter {TYPE_2__* rx_pool; TYPE_1__* login_rsp_buf; } ;
struct TYPE_4__ {scalar_t__ active; } ;
struct TYPE_3__ {int num_rxadd_subcrqs; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static void deactivate_rx_pools(struct ibmvnic_adapter *adapter)
{
 int i;

 for (i = 0; i < be32_to_cpu(adapter->login_rsp_buf->num_rxadd_subcrqs);
      i++)
  adapter->rx_pool[i].active = 0;
}
