
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {scalar_t__ link_duplex; int link_speed; TYPE_1__* netdev; struct e1000_hw hw; } ;
struct TYPE_2__ {int name; } ;


 int CTRL ;
 int E1000_CTRL_RFCE ;
 int E1000_CTRL_TFCE ;
 scalar_t__ FULL_DUPLEX ;
 int er32 (int ) ;
 int pr_info (char*,int ,int ,char*,char*) ;

__attribute__((used)) static void e1000_print_link_info(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl = er32(CTRL);


 pr_info("%s NIC Link is Up %d Mbps %s Duplex, Flow Control: %s\n",
  adapter->netdev->name, adapter->link_speed,
  adapter->link_duplex == FULL_DUPLEX ? "Full" : "Half",
  (ctrl & E1000_CTRL_TFCE) && (ctrl & E1000_CTRL_RFCE) ? "Rx/Tx" :
  (ctrl & E1000_CTRL_RFCE) ? "Rx" :
  (ctrl & E1000_CTRL_TFCE) ? "Tx" : "None");
}
