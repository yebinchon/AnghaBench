
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int mbx_lock; } ;
struct igbvf_adapter {int max_frame_size; struct e1000_hw hw; } ;


 int VLAN_TAG_SIZE ;
 int e1000_rlpml_set_vf (struct e1000_hw*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void igbvf_set_rlpml(struct igbvf_adapter *adapter)
{
 int max_frame_size;
 struct e1000_hw *hw = &adapter->hw;

 max_frame_size = adapter->max_frame_size + VLAN_TAG_SIZE;

 spin_lock_bh(&hw->mbx_lock);

 e1000_rlpml_set_vf(hw, max_frame_size);

 spin_unlock_bh(&hw->mbx_lock);
}
