
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_adapter {scalar_t__ ocrdma_dev; } ;
struct TYPE_2__ {int (* state_change_handler ) (scalar_t__,int ) ;} ;


 int BE_DEV_SHUTDOWN ;
 int be_adapter_list_lock ;
 scalar_t__ be_roce_supported (struct be_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* ocrdma_drv ;
 int stub1 (scalar_t__,int ) ;

void be_roce_dev_shutdown(struct be_adapter *adapter)
{
 if (be_roce_supported(adapter)) {
  mutex_lock(&be_adapter_list_lock);
  if (ocrdma_drv && adapter->ocrdma_dev &&
      ocrdma_drv->state_change_handler)
   ocrdma_drv->state_change_handler(adapter->ocrdma_dev,
        BE_DEV_SHUTDOWN);
  mutex_unlock(&be_adapter_list_lock);
 }
}
