
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct vf_data_storage {int vf_api; int vf_mac_addresses; scalar_t__ num_vf_mc_hashes; scalar_t__ spoofchk_enabled; int pf_vlan; scalar_t__ pf_qos; } ;
struct ixgbe_ring_feature {int mask; } ;
struct TYPE_3__ {int (* set_mac_anti_spoofing ) (struct ixgbe_hw*,int,size_t) ;int (* set_vlan_anti_spoofing ) (struct ixgbe_hw*,int,size_t) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct vf_data_storage* vfinfo; int netdev; scalar_t__ default_up; int hw_tcs; struct ixgbe_ring_feature* ring_feature; struct ixgbe_hw hw; } ;


 int IXGBE_PVFTXDCTL (unsigned int) ;
 size_t IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 size_t IXGBE_TXDCTL_ENABLE ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,size_t) ;
 size_t RING_F_VMDQ ;
 size_t __ALIGN_MASK (int,int ) ;
 int ixgbe_clear_vf_vlans (struct ixgbe_adapter*,size_t) ;
 int ixgbe_clear_vmvir (struct ixgbe_adapter*,size_t) ;
 int ixgbe_del_mac_filter (struct ixgbe_adapter*,int ,size_t) ;
 int ixgbe_ipsec_vf_clear (struct ixgbe_adapter*,size_t) ;
 int ixgbe_mbox_api_10 ;
 int ixgbe_set_rx_mode (int ) ;
 int ixgbe_set_vf_macvlan (struct ixgbe_adapter*,size_t,int ,int *) ;
 int ixgbe_set_vf_vlan (struct ixgbe_adapter*,int,int ,size_t) ;
 int ixgbe_set_vmolr (struct ixgbe_hw*,size_t,int) ;
 int ixgbe_set_vmvir (struct ixgbe_adapter*,int ,scalar_t__,size_t) ;
 int stub1 (struct ixgbe_hw*,int,size_t) ;
 int stub2 (struct ixgbe_hw*,int,size_t) ;

__attribute__((used)) static inline void ixgbe_vf_reset_event(struct ixgbe_adapter *adapter, u32 vf)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
 struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];
 u32 q_per_pool = __ALIGN_MASK(1, ~vmdq->mask);
 u8 num_tcs = adapter->hw_tcs;
 u32 reg_val;
 u32 queue;


 ixgbe_clear_vf_vlans(adapter, vf);


 ixgbe_set_vf_vlan(adapter, 1, vfinfo->pf_vlan, vf);


 ixgbe_set_vmolr(hw, vf, !vfinfo->pf_vlan);


 if (!vfinfo->pf_vlan && !vfinfo->pf_qos && !num_tcs) {
  ixgbe_clear_vmvir(adapter, vf);
 } else {
  if (vfinfo->pf_qos || !num_tcs)
   ixgbe_set_vmvir(adapter, vfinfo->pf_vlan,
     vfinfo->pf_qos, vf);
  else
   ixgbe_set_vmvir(adapter, vfinfo->pf_vlan,
     adapter->default_up, vf);

  if (vfinfo->spoofchk_enabled) {
   hw->mac.ops.set_vlan_anti_spoofing(hw, 1, vf);
   hw->mac.ops.set_mac_anti_spoofing(hw, 1, vf);
  }
 }


 adapter->vfinfo[vf].num_vf_mc_hashes = 0;


 ixgbe_ipsec_vf_clear(adapter, vf);


 ixgbe_set_rx_mode(adapter->netdev);

 ixgbe_del_mac_filter(adapter, adapter->vfinfo[vf].vf_mac_addresses, vf);
 ixgbe_set_vf_macvlan(adapter, vf, 0, ((void*)0));


 adapter->vfinfo[vf].vf_api = ixgbe_mbox_api_10;


 for (queue = 0; queue < q_per_pool; queue++) {
  unsigned int reg_idx = (vf * q_per_pool) + queue;

  reg_val = IXGBE_READ_REG(hw, IXGBE_PVFTXDCTL(reg_idx));


  if (reg_val) {
   reg_val |= IXGBE_TXDCTL_ENABLE;
   IXGBE_WRITE_REG(hw, IXGBE_PVFTXDCTL(reg_idx), reg_val);
   reg_val &= ~IXGBE_TXDCTL_ENABLE;
   IXGBE_WRITE_REG(hw, IXGBE_PVFTXDCTL(reg_idx), reg_val);
  }
 }

 IXGBE_WRITE_FLUSH(hw);
}
