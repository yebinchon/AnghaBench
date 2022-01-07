
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_EEP_SM ;
 int ixgbe_read_eerd_buffer_generic (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ) ;

__attribute__((used)) static s32 ixgbe_read_eerd_buffer_X540(struct ixgbe_hw *hw,
           u16 offset, u16 words, u16 *data)
{
 s32 status;

 if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
  return IXGBE_ERR_SWFW_SYNC;

 status = ixgbe_read_eerd_buffer_generic(hw, offset, words, data);

 hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);
 return status;
}
