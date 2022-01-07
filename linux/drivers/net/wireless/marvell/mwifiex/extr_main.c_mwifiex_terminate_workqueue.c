
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int * rx_workqueue; int * workqueue; } ;


 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;

__attribute__((used)) static void mwifiex_terminate_workqueue(struct mwifiex_adapter *adapter)
{
 if (adapter->workqueue) {
  flush_workqueue(adapter->workqueue);
  destroy_workqueue(adapter->workqueue);
  adapter->workqueue = ((void*)0);
 }

 if (adapter->rx_workqueue) {
  flush_workqueue(adapter->rx_workqueue);
  destroy_workqueue(adapter->rx_workqueue);
  adapter->rx_workqueue = ((void*)0);
 }
}
