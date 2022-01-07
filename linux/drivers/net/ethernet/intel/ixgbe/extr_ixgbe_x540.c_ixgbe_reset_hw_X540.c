
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int (* get_wwn_prefix ) (struct ixgbe_hw*,int *,int *) ;int (* clear_vmdq ) (struct ixgbe_hw*,scalar_t__,int ) ;int (* set_rar ) (struct ixgbe_hw*,scalar_t__,int ,int ,int ) ;int (* get_san_mac_addr ) (struct ixgbe_hw*,int ) ;int (* init_rx_addrs ) (struct ixgbe_hw*) ;int (* get_mac_addr ) (struct ixgbe_hw*,int ) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;scalar_t__ (* stop_adapter ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int flags; int wwpn_prefix; int wwnn_prefix; TYPE_2__ ops; scalar_t__ num_rar_entries; scalar_t__ san_mac_rar_index; int san_addr; int perm_addr; } ;
struct TYPE_4__ {int phy_semaphore_mask; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int IXGBE_CLEAR_VMDQ_ALL ;
 int IXGBE_CTRL ;
 int IXGBE_CTRL_RST ;
 int IXGBE_CTRL_RST_MASK ;
 scalar_t__ IXGBE_ERR_RESET_FAILED ;
 scalar_t__ IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ;
 int IXGBE_RAH_AV ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXPBSIZE (int ) ;
 int IXGBE_RXPBSIZE_SHIFT ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ IXGBE_X540_MAX_TX_QUEUES ;
 int hw_dbg (struct ixgbe_hw*,char*,...) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int ixgbe_clear_tx_pending (struct ixgbe_hw*) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int) ;
 int stub3 (struct ixgbe_hw*,int) ;
 int stub4 (struct ixgbe_hw*,int ) ;
 int stub5 (struct ixgbe_hw*) ;
 int stub6 (struct ixgbe_hw*,int ) ;
 int stub7 (struct ixgbe_hw*,scalar_t__,int ,int ,int ) ;
 int stub8 (struct ixgbe_hw*,scalar_t__,int ) ;
 int stub9 (struct ixgbe_hw*,int *,int *) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

s32 ixgbe_reset_hw_X540(struct ixgbe_hw *hw)
{
 s32 status;
 u32 ctrl, i;
 u32 swfw_mask = hw->phy.phy_semaphore_mask;


 status = hw->mac.ops.stop_adapter(hw);
 if (status)
  return status;


 ixgbe_clear_tx_pending(hw);

mac_reset_top:
 status = hw->mac.ops.acquire_swfw_sync(hw, swfw_mask);
 if (status) {
  hw_dbg(hw, "semaphore failed with %d", status);
  return IXGBE_ERR_SWFW_SYNC;
 }

 ctrl = IXGBE_CTRL_RST;
 ctrl |= IXGBE_READ_REG(hw, IXGBE_CTRL);
 IXGBE_WRITE_REG(hw, IXGBE_CTRL, ctrl);
 IXGBE_WRITE_FLUSH(hw);
 hw->mac.ops.release_swfw_sync(hw, swfw_mask);
 usleep_range(1000, 1200);


 for (i = 0; i < 10; i++) {
  ctrl = IXGBE_READ_REG(hw, IXGBE_CTRL);
  if (!(ctrl & IXGBE_CTRL_RST_MASK))
   break;
  udelay(1);
 }

 if (ctrl & IXGBE_CTRL_RST_MASK) {
  status = IXGBE_ERR_RESET_FAILED;
  hw_dbg(hw, "Reset polling failed to complete.\n");
 }
 msleep(100);






 if (hw->mac.flags & IXGBE_FLAGS_DOUBLE_RESET_REQUIRED) {
  hw->mac.flags &= ~IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;
  goto mac_reset_top;
 }


 IXGBE_WRITE_REG(hw, IXGBE_RXPBSIZE(0), 384 << IXGBE_RXPBSIZE_SHIFT);


 hw->mac.ops.get_mac_addr(hw, hw->mac.perm_addr);






 hw->mac.num_rar_entries = IXGBE_X540_MAX_TX_QUEUES;
 hw->mac.ops.init_rx_addrs(hw);


 hw->mac.ops.get_san_mac_addr(hw, hw->mac.san_addr);


 if (is_valid_ether_addr(hw->mac.san_addr)) {

  hw->mac.san_mac_rar_index = hw->mac.num_rar_entries - 1;

  hw->mac.ops.set_rar(hw, hw->mac.san_mac_rar_index,
        hw->mac.san_addr, 0, IXGBE_RAH_AV);


  hw->mac.ops.clear_vmdq(hw, hw->mac.san_mac_rar_index,
           IXGBE_CLEAR_VMDQ_ALL);


  hw->mac.num_rar_entries--;
 }


 hw->mac.ops.get_wwn_prefix(hw, &hw->mac.wwnn_prefix,
       &hw->mac.wwpn_prefix);

 return status;
}
