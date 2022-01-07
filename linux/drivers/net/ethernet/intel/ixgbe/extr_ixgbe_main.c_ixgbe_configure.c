
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* enable_rx_buff ) (struct ixgbe_hw*) ;int (* disable_rx_buff ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags; int fdir_pballoc; struct ixgbe_hw hw; int netdev; } ;


 int IXGBE_FLAG_DCA_CAPABLE ;
 int IXGBE_FLAG_FDIR_HASH_CAPABLE ;
 int IXGBE_FLAG_FDIR_PERFECT_CAPABLE ;
 int ixgbe_configure_dcb (struct ixgbe_adapter*) ;
 int ixgbe_configure_dfwd (struct ixgbe_adapter*) ;
 int ixgbe_configure_fcoe (struct ixgbe_adapter*) ;
 int ixgbe_configure_pb (struct ixgbe_adapter*) ;
 int ixgbe_configure_rx (struct ixgbe_adapter*) ;
 int ixgbe_configure_tx (struct ixgbe_adapter*) ;
 int ixgbe_configure_virtualization (struct ixgbe_adapter*) ;
 int ixgbe_fdir_filter_restore (struct ixgbe_adapter*) ;
 int ixgbe_init_fdir_perfect_82599 (struct ixgbe_hw*,int ) ;
 int ixgbe_init_fdir_signature_82599 (struct ixgbe_hw*,int ) ;
 int ixgbe_ipsec_restore (struct ixgbe_adapter*) ;


 int ixgbe_restore_vlan (struct ixgbe_adapter*) ;
 int ixgbe_set_rx_mode (int ) ;
 int ixgbe_setup_dca (struct ixgbe_adapter*) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;

__attribute__((used)) static void ixgbe_configure(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;

 ixgbe_configure_pb(adapter);







 ixgbe_configure_virtualization(adapter);

 ixgbe_set_rx_mode(adapter->netdev);
 ixgbe_restore_vlan(adapter);
 ixgbe_ipsec_restore(adapter);

 switch (hw->mac.type) {
 case 129:
 case 128:
  hw->mac.ops.disable_rx_buff(hw);
  break;
 default:
  break;
 }

 if (adapter->flags & IXGBE_FLAG_FDIR_HASH_CAPABLE) {
  ixgbe_init_fdir_signature_82599(&adapter->hw,
      adapter->fdir_pballoc);
 } else if (adapter->flags & IXGBE_FLAG_FDIR_PERFECT_CAPABLE) {
  ixgbe_init_fdir_perfect_82599(&adapter->hw,
           adapter->fdir_pballoc);
  ixgbe_fdir_filter_restore(adapter);
 }

 switch (hw->mac.type) {
 case 129:
 case 128:
  hw->mac.ops.enable_rx_buff(hw);
  break;
 default:
  break;
 }
 ixgbe_configure_tx(adapter);
 ixgbe_configure_rx(adapter);
 ixgbe_configure_dfwd(adapter);
}
