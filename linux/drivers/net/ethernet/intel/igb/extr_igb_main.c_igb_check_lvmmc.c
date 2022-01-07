
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int netdev; struct e1000_hw hw; } ;


 int E1000_LVMMC ;
 int net_ratelimit () ;
 int netdev_warn (int ,char*,scalar_t__) ;
 scalar_t__ rd32 (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void igb_check_lvmmc(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 lvmmc;

 lvmmc = rd32(E1000_LVMMC);
 if (lvmmc) {
  if (unlikely(net_ratelimit())) {
   netdev_warn(adapter->netdev,
        "malformed Tx packet detected and dropped, LVMMC:0x%08x\n",
        lvmmc);
  }
 }
}
