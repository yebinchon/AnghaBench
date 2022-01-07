
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags; TYPE_1__* netdev; struct e1000_hw hw; } ;
struct TYPE_2__ {int flags; int features; } ;


 int E1000_RCTL_CFIEN ;
 int E1000_RCTL_VFE ;
 int IFF_PROMISC ;
 int RCTL ;
 int __E1000_DOWN ;
 int __e1000_vlan_mode (struct e1000_adapter*,int ) ;
 int e1000_irq_disable (struct e1000_adapter*) ;
 int e1000_irq_enable (struct e1000_adapter*) ;
 int e1000_update_mng_vlan (struct e1000_adapter*) ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void e1000_vlan_filter_on_off(struct e1000_adapter *adapter,
         bool filter_on)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 rctl;

 if (!test_bit(__E1000_DOWN, &adapter->flags))
  e1000_irq_disable(adapter);

 __e1000_vlan_mode(adapter, adapter->netdev->features);
 if (filter_on) {

  rctl = er32(RCTL);
  rctl &= ~E1000_RCTL_CFIEN;
  if (!(adapter->netdev->flags & IFF_PROMISC))
   rctl |= E1000_RCTL_VFE;
  ew32(RCTL, rctl);
  e1000_update_mng_vlan(adapter);
 } else {

  rctl = er32(RCTL);
  rctl &= ~E1000_RCTL_VFE;
  ew32(RCTL, rctl);
 }

 if (!test_bit(__E1000_DOWN, &adapter->flags))
  e1000_irq_enable(adapter);
}
