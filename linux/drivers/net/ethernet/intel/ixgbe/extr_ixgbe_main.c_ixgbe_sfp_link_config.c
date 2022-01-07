
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {scalar_t__ sfp_poll_time; int flags2; TYPE_2__ hw; } ;


 int IXGBE_FLAG2_SEARCH_FOR_SFP ;
 int IXGBE_FLAG2_SFP_NEEDS_RESET ;
 scalar_t__ ixgbe_mac_82598EB ;

__attribute__((used)) static void ixgbe_sfp_link_config(struct ixgbe_adapter *adapter)
{






 if (adapter->hw.mac.type == ixgbe_mac_82598EB)
  adapter->flags2 |= IXGBE_FLAG2_SEARCH_FOR_SFP;

 adapter->flags2 |= IXGBE_FLAG2_SFP_NEEDS_RESET;
 adapter->sfp_poll_time = 0;
}
