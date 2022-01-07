
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int get_link_status; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igbvf_adapter {int watchdog_timer; scalar_t__ msix_entries; TYPE_2__* rx_ring; int state; struct e1000_hw hw; } ;
struct TYPE_4__ {int napi; } ;


 int EICR ;
 int __IGBVF_DOWN ;
 int clear_bit (int ,int *) ;
 int er32 (int ) ;
 int igbvf_configure (struct igbvf_adapter*) ;
 int igbvf_configure_msix (struct igbvf_adapter*) ;
 int igbvf_irq_enable (struct igbvf_adapter*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int napi_enable (int *) ;

int igbvf_up(struct igbvf_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;


 igbvf_configure(adapter);

 clear_bit(__IGBVF_DOWN, &adapter->state);

 napi_enable(&adapter->rx_ring->napi);
 if (adapter->msix_entries)
  igbvf_configure_msix(adapter);


 er32(EICR);
 igbvf_irq_enable(adapter);


 hw->mac.get_link_status = 1;
 mod_timer(&adapter->watchdog_timer, jiffies + 1);

 return 0;
}
