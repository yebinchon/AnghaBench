
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* set_source_address_pruning ) (struct ixgbe_hw*,int,unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {unsigned int num_vfs; unsigned int num_rx_pools; int bridge_mode; struct ixgbe_hw hw; } ;
typedef int __u16 ;




 int EINVAL ;
 int IXGBE_PFDTXGSWC ;
 int IXGBE_PFDTXGSWC_VT_LBEN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VMD_CTL ;
 int IXGBE_VT_CTL_REPLEN ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int drv ;
 int e_info (int ,char*,char*) ;
 int stub1 (struct ixgbe_hw*,int,unsigned int) ;
 int stub2 (struct ixgbe_hw*,int,unsigned int) ;

__attribute__((used)) static int ixgbe_configure_bridge_mode(struct ixgbe_adapter *adapter,
           __u16 mode)
{
 struct ixgbe_hw *hw = &adapter->hw;
 unsigned int p, num_pools;
 u32 vmdctl;

 switch (mode) {
 case 128:

  IXGBE_WRITE_REG(&adapter->hw, IXGBE_PFDTXGSWC, 0);





  vmdctl = IXGBE_READ_REG(hw, IXGBE_VMD_CTL);
  vmdctl |= IXGBE_VT_CTL_REPLEN;
  IXGBE_WRITE_REG(hw, IXGBE_VMD_CTL, vmdctl);




  num_pools = adapter->num_vfs + adapter->num_rx_pools;
  for (p = 0; p < num_pools; p++) {
   if (hw->mac.ops.set_source_address_pruning)
    hw->mac.ops.set_source_address_pruning(hw,
               1,
               p);
  }
  break;
 case 129:

  IXGBE_WRITE_REG(&adapter->hw, IXGBE_PFDTXGSWC,
    IXGBE_PFDTXGSWC_VT_LBEN);




  vmdctl = IXGBE_READ_REG(hw, IXGBE_VMD_CTL);
  if (!adapter->num_vfs)
   vmdctl &= ~IXGBE_VT_CTL_REPLEN;
  IXGBE_WRITE_REG(hw, IXGBE_VMD_CTL, vmdctl);




  num_pools = adapter->num_vfs + adapter->num_rx_pools;
  for (p = 0; p < num_pools; p++) {
   if (hw->mac.ops.set_source_address_pruning)
    hw->mac.ops.set_source_address_pruning(hw,
               0,
               p);
  }
  break;
 default:
  return -EINVAL;
 }

 adapter->bridge_mode = mode;

 e_info(drv, "enabling bridge mode: %s\n",
        mode == 128 ? "VEPA" : "VEB");

 return 0;
}
