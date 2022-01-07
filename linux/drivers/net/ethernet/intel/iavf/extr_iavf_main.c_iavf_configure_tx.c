
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_hw {scalar_t__ hw_addr; } ;
struct iavf_adapter {int num_active_queues; TYPE_1__* tx_rings; struct iavf_hw hw; } ;
struct TYPE_2__ {scalar_t__ tail; } ;


 scalar_t__ IAVF_QTX_TAIL1 (int) ;

__attribute__((used)) static void iavf_configure_tx(struct iavf_adapter *adapter)
{
 struct iavf_hw *hw = &adapter->hw;
 int i;

 for (i = 0; i < adapter->num_active_queues; i++)
  adapter->tx_rings[i].tail = hw->hw_addr + IAVF_QTX_TAIL1(i);
}
