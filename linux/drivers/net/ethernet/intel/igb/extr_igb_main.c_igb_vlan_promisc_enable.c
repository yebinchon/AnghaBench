
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int (* write_vfta ) (struct e1000_hw*,scalar_t__,unsigned int) ;} ;
struct TYPE_6__ {int type; TYPE_2__ ops; } ;
struct e1000_hw {TYPE_3__ mac; } ;
struct igb_adapter {int flags; scalar_t__ vfs_allocated_count; TYPE_1__* netdev; struct e1000_hw hw; } ;
struct TYPE_4__ {int features; } ;


 scalar_t__ BIT (scalar_t__) ;
 scalar_t__ E1000_VLAN_FILTER_TBL_SIZE ;
 int E1000_VLVF (scalar_t__) ;
 scalar_t__ E1000_VLVF_ARRAY_SIZE ;
 scalar_t__ E1000_VLVF_POOLSEL_SHIFT ;
 int IGB_FLAG_VLAN_PROMISC ;
 int NETIF_F_NTUPLE ;






 scalar_t__ rd32 (int ) ;
 int stub1 (struct e1000_hw*,scalar_t__,unsigned int) ;
 int wr32 (int ,scalar_t__) ;

__attribute__((used)) static int igb_vlan_promisc_enable(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 i, pf_id;

 switch (hw->mac.type) {
 case 131:
 case 130:
 case 129:

  if (adapter->netdev->features & NETIF_F_NTUPLE)
   break;

 case 133:
 case 132:
 case 128:

  if (adapter->vfs_allocated_count)
   break;

 default:
  return 1;
 }


 if (adapter->flags & IGB_FLAG_VLAN_PROMISC)
  return 0;

 if (!adapter->vfs_allocated_count)
  goto set_vfta;


 pf_id = adapter->vfs_allocated_count + E1000_VLVF_POOLSEL_SHIFT;

 for (i = E1000_VLVF_ARRAY_SIZE; --i;) {
  u32 vlvf = rd32(E1000_VLVF(i));

  vlvf |= BIT(pf_id);
  wr32(E1000_VLVF(i), vlvf);
 }

set_vfta:

 for (i = E1000_VLAN_FILTER_TBL_SIZE; i--;)
  hw->mac.ops.write_vfta(hw, i, ~0U);


 adapter->flags |= IGB_FLAG_VLAN_PROMISC;

 return 0;
}
