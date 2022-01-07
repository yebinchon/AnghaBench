
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_adapter {int * ocrdma_dev; } ;
struct TYPE_2__ {int (* remove ) (int *) ;} ;


 TYPE_1__* ocrdma_drv ;
 int stub1 (int *) ;

__attribute__((used)) static void _be_roce_dev_remove(struct be_adapter *adapter)
{
 if (ocrdma_drv && ocrdma_drv->remove && adapter->ocrdma_dev)
  ocrdma_drv->remove(adapter->ocrdma_dev);
 adapter->ocrdma_dev = ((void*)0);
}
