
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_adapter {int num_queues; TYPE_1__* ena_napi; } ;
struct TYPE_2__ {int napi; } ;


 int netif_napi_del (int *) ;

__attribute__((used)) static void ena_del_napi(struct ena_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_queues; i++)
  netif_napi_del(&adapter->ena_napi[i].napi);
}
