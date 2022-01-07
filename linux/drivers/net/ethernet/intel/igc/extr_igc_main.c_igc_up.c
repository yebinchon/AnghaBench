
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int get_link_status; } ;
struct igc_hw {TYPE_1__ mac; } ;
struct igc_adapter {int num_q_vectors; int watchdog_task; int netdev; TYPE_2__** q_vector; scalar_t__ msix_entries; int state; struct igc_hw hw; } ;
struct TYPE_4__ {int napi; } ;


 int IGC_ICR ;
 int __IGC_DOWN ;
 int clear_bit (int ,int *) ;
 int igc_assign_vector (TYPE_2__*,int ) ;
 int igc_configure (struct igc_adapter*) ;
 int igc_configure_msix (struct igc_adapter*) ;
 int igc_irq_enable (struct igc_adapter*) ;
 int napi_enable (int *) ;
 int netif_tx_start_all_queues (int ) ;
 int rd32 (int ) ;
 int schedule_work (int *) ;

void igc_up(struct igc_adapter *adapter)
{
 struct igc_hw *hw = &adapter->hw;
 int i = 0;


 igc_configure(adapter);

 clear_bit(__IGC_DOWN, &adapter->state);

 for (i = 0; i < adapter->num_q_vectors; i++)
  napi_enable(&adapter->q_vector[i]->napi);

 if (adapter->msix_entries)
  igc_configure_msix(adapter);
 else
  igc_assign_vector(adapter->q_vector[0], 0);


 rd32(IGC_ICR);
 igc_irq_enable(adapter);

 netif_tx_start_all_queues(adapter->netdev);


 hw->mac.get_link_status = 1;
 schedule_work(&adapter->watchdog_task);
}
