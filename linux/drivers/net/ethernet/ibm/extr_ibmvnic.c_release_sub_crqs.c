
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ibmvnic_adapter {int num_active_tx_scrqs; int num_active_rx_scrqs; TYPE_1__** rx_scrq; int netdev; TYPE_1__** tx_scrq; } ;
struct TYPE_4__ {scalar_t__ irq; } ;


 int free_irq (scalar_t__,TYPE_1__*) ;
 int irq_dispose_mapping (scalar_t__) ;
 int kfree (TYPE_1__**) ;
 int netdev_dbg (int ,char*,int) ;
 int release_sub_crq_queue (struct ibmvnic_adapter*,TYPE_1__*,int) ;

__attribute__((used)) static void release_sub_crqs(struct ibmvnic_adapter *adapter, bool do_h_free)
{
 int i;

 if (adapter->tx_scrq) {
  for (i = 0; i < adapter->num_active_tx_scrqs; i++) {
   if (!adapter->tx_scrq[i])
    continue;

   netdev_dbg(adapter->netdev, "Releasing tx_scrq[%d]\n",
       i);
   if (adapter->tx_scrq[i]->irq) {
    free_irq(adapter->tx_scrq[i]->irq,
      adapter->tx_scrq[i]);
    irq_dispose_mapping(adapter->tx_scrq[i]->irq);
    adapter->tx_scrq[i]->irq = 0;
   }

   release_sub_crq_queue(adapter, adapter->tx_scrq[i],
           do_h_free);
  }

  kfree(adapter->tx_scrq);
  adapter->tx_scrq = ((void*)0);
  adapter->num_active_tx_scrqs = 0;
 }

 if (adapter->rx_scrq) {
  for (i = 0; i < adapter->num_active_rx_scrqs; i++) {
   if (!adapter->rx_scrq[i])
    continue;

   netdev_dbg(adapter->netdev, "Releasing rx_scrq[%d]\n",
       i);
   if (adapter->rx_scrq[i]->irq) {
    free_irq(adapter->rx_scrq[i]->irq,
      adapter->rx_scrq[i]);
    irq_dispose_mapping(adapter->rx_scrq[i]->irq);
    adapter->rx_scrq[i]->irq = 0;
   }

   release_sub_crq_queue(adapter, adapter->rx_scrq[i],
           do_h_free);
  }

  kfree(adapter->rx_scrq);
  adapter->rx_scrq = ((void*)0);
  adapter->num_active_rx_scrqs = 0;
 }
}
