
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int dummy; } ;


 int ena_destroy_all_rx_queues (struct ena_adapter*) ;
 int ena_destroy_all_tx_queues (struct ena_adapter*) ;

__attribute__((used)) static void ena_destroy_all_io_queues(struct ena_adapter *adapter)
{
 ena_destroy_all_tx_queues(adapter);
 ena_destroy_all_rx_queues(adapter);
}
