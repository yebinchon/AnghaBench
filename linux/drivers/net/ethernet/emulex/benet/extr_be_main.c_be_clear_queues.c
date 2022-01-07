
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int dummy; } ;


 int be_evt_queues_destroy (struct be_adapter*) ;
 int be_mcc_queues_destroy (struct be_adapter*) ;
 int be_rx_cqs_destroy (struct be_adapter*) ;
 int be_tx_queues_destroy (struct be_adapter*) ;

__attribute__((used)) static void be_clear_queues(struct be_adapter *adapter)
{
 be_mcc_queues_destroy(adapter);
 be_rx_cqs_destroy(adapter);
 be_tx_queues_destroy(adapter);
 be_evt_queues_destroy(adapter);
}
