
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {scalar_t__ en_mng_pt; struct e1000_hw hw; } ;


 int E1000_MANC_ARP_EN ;
 int MANC ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;

__attribute__((used)) static void e1000_release_manageability(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;

 if (adapter->en_mng_pt) {
  u32 manc = er32(MANC);


  manc |= E1000_MANC_ARP_EN;

  ew32(MANC, manc);
 }
}
