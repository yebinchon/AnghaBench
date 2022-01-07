
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int num_queues; } ;


 int ena_free_rx_resources (struct ena_adapter*,int) ;

__attribute__((used)) static void ena_free_all_io_rx_resources(struct ena_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_queues; i++)
  ena_free_rx_resources(adapter, i);
}
