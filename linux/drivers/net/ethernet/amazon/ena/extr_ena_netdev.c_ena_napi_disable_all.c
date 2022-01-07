
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_adapter {int num_queues; TYPE_1__* ena_napi; } ;
struct TYPE_2__ {int napi; } ;


 int napi_disable (int *) ;

__attribute__((used)) static void ena_napi_disable_all(struct ena_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_queues; i++)
  napi_disable(&adapter->ena_napi[i].napi);
}
