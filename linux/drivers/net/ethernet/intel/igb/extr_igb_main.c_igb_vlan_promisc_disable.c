
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct igb_adapter {int flags; } ;


 scalar_t__ E1000_VLAN_FILTER_TBL_SIZE ;
 int IGB_FLAG_VLAN_PROMISC ;
 scalar_t__ VFTA_BLOCK_SIZE ;
 int igb_scrub_vfta (struct igb_adapter*,scalar_t__) ;

__attribute__((used)) static void igb_vlan_promisc_disable(struct igb_adapter *adapter)
{
 u32 i;


 if (!(adapter->flags & IGB_FLAG_VLAN_PROMISC))
  return;


 adapter->flags &= ~IGB_FLAG_VLAN_PROMISC;

 for (i = 0; i < E1000_VLAN_FILTER_TBL_SIZE; i += VFTA_BLOCK_SIZE)
  igb_scrub_vfta(adapter, i);
}
