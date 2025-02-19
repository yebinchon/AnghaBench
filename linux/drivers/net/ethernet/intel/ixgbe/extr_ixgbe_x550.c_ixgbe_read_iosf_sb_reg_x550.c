
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_PHY ;
 int IXGBE_GSSR_PHY0_SM ;
 int IXGBE_GSSR_PHY1_SM ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SB_IOSF_CTRL_ADDR_SHIFT ;
 int IXGBE_SB_IOSF_CTRL_CMPL_ERR_MASK ;
 int IXGBE_SB_IOSF_CTRL_CMPL_ERR_SHIFT ;
 int IXGBE_SB_IOSF_CTRL_RESP_STAT_MASK ;
 int IXGBE_SB_IOSF_CTRL_TARGET_SELECT_SHIFT ;
 int IXGBE_SB_IOSF_INDIRECT_CTRL ;
 int IXGBE_SB_IOSF_INDIRECT_DATA ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int hw_dbg (struct ixgbe_hw*,char*,int) ;
 scalar_t__ ixgbe_iosf_wait (struct ixgbe_hw*,int*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int) ;
 int stub2 (struct ixgbe_hw*,int) ;

__attribute__((used)) static s32 ixgbe_read_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
           u32 device_type, u32 *data)
{
 u32 gssr = IXGBE_GSSR_PHY1_SM | IXGBE_GSSR_PHY0_SM;
 u32 command, error;
 s32 ret;

 ret = hw->mac.ops.acquire_swfw_sync(hw, gssr);
 if (ret)
  return ret;

 ret = ixgbe_iosf_wait(hw, ((void*)0));
 if (ret)
  goto out;

 command = ((reg_addr << IXGBE_SB_IOSF_CTRL_ADDR_SHIFT) |
     (device_type << IXGBE_SB_IOSF_CTRL_TARGET_SELECT_SHIFT));


 IXGBE_WRITE_REG(hw, IXGBE_SB_IOSF_INDIRECT_CTRL, command);

 ret = ixgbe_iosf_wait(hw, &command);

 if ((command & IXGBE_SB_IOSF_CTRL_RESP_STAT_MASK) != 0) {
  error = (command & IXGBE_SB_IOSF_CTRL_CMPL_ERR_MASK) >>
    IXGBE_SB_IOSF_CTRL_CMPL_ERR_SHIFT;
  hw_dbg(hw, "Failed to read, error %x\n", error);
  return IXGBE_ERR_PHY;
 }

 if (!ret)
  *data = IXGBE_READ_REG(hw, IXGBE_SB_IOSF_INDIRECT_DATA);

out:
 hw->mac.ops.release_swfw_sync(hw, gssr);
 return ret;
}
