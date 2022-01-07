
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct e1000_adapter {int netdev; int napi; int flags; struct e1000_hw hw; } ;


 int E1000_ICS_LSC ;
 int ICS ;
 int __E1000_DOWN ;
 int clear_bit (int ,int *) ;
 int e1000_configure (struct e1000_adapter*) ;
 int e1000_irq_enable (struct e1000_adapter*) ;
 int ew32 (int ,int ) ;
 int napi_enable (int *) ;
 int netif_wake_queue (int ) ;

int e1000_up(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;


 e1000_configure(adapter);

 clear_bit(__E1000_DOWN, &adapter->flags);

 napi_enable(&adapter->napi);

 e1000_irq_enable(adapter);

 netif_wake_queue(adapter->netdev);


 ew32(ICS, E1000_ICS_LSC);
 return 0;
}
