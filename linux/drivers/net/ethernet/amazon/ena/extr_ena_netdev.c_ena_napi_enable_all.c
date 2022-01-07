
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_adapter {int num_queues; TYPE_1__* ena_napi; } ;
struct TYPE_2__ {int napi; } ;


 int napi_enable (int *) ;

__attribute__((used)) static void ena_napi_enable_all(struct ena_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_queues; i++)
  napi_enable(&adapter->ena_napi[i].napi);
}
