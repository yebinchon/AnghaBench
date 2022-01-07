
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvnic_adapter {TYPE_1__* vpd; } ;
struct TYPE_2__ {struct TYPE_2__* buff; } ;


 int kfree (TYPE_1__*) ;

__attribute__((used)) static void release_vpd_data(struct ibmvnic_adapter *adapter)
{
 if (!adapter->vpd)
  return;

 kfree(adapter->vpd->buff);
 kfree(adapter->vpd);

 adapter->vpd = ((void*)0);
}
