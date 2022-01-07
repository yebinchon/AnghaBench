
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct e1000_hw {int dummy; } ;
struct igb_adapter {int num_tx_queues; TYPE_1__** tx_ring; struct e1000_hw hw; } ;
struct TYPE_2__ {int reg_idx; } ;


 int E1000_TXDCTL (int ) ;
 int igb_configure_tx_ring (struct igb_adapter*,TYPE_1__*) ;
 int usleep_range (int,int) ;
 int wr32 (int ,int ) ;
 int wrfl () ;

__attribute__((used)) static void igb_configure_tx(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 int i;


 for (i = 0; i < adapter->num_tx_queues; i++)
  wr32(E1000_TXDCTL(adapter->tx_ring[i]->reg_idx), 0);

 wrfl();
 usleep_range(10000, 20000);

 for (i = 0; i < adapter->num_tx_queues; i++)
  igb_configure_tx_ring(adapter, adapter->tx_ring[i]);
}
