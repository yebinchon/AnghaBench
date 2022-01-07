
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_9__ {scalar_t__ (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_12__ {int semaphore_delay; TYPE_3__ ops; } ;
struct TYPE_10__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;int (* prot_autoc_write ) (struct ixgbe_hw*,int,int) ;int (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_11__ {int orig_autoc; TYPE_4__ ops; } ;
struct TYPE_7__ {int * reset; } ;
struct TYPE_8__ {scalar_t__ sfp_type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_6__ eeprom; TYPE_5__ mac; TYPE_2__ phy; } ;
typedef int s32 ;


 int IXGBE_AUTOC_LMS_10G_SERIAL ;
 int IXGBE_CORECTL ;
 int IXGBE_ERR_SFP_SETUP_NOT_COMPLETE ;
 int IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_MAC_CSR_SM ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int hw_err (struct ixgbe_hw*,char*,int) ;
 int ixgbe_get_sfp_init_sequence_offsets (struct ixgbe_hw*,int*,int*) ;
 int ixgbe_init_mac_link_ops_82599 (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_sfp_type_unknown ;
 int stub1 (struct ixgbe_hw*,int ) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int,int*) ;
 int stub4 (struct ixgbe_hw*,int ) ;
 int stub5 (struct ixgbe_hw*,int,int) ;
 int stub6 (struct ixgbe_hw*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 ixgbe_setup_sfp_modules_82599(struct ixgbe_hw *hw)
{
 s32 ret_val;
 u16 list_offset, data_offset, data_value;

 if (hw->phy.sfp_type != ixgbe_sfp_type_unknown) {
  ixgbe_init_mac_link_ops_82599(hw);

  hw->phy.ops.reset = ((void*)0);

  ret_val = ixgbe_get_sfp_init_sequence_offsets(hw, &list_offset,
             &data_offset);
  if (ret_val)
   return ret_val;


  ret_val = hw->mac.ops.acquire_swfw_sync(hw,
       IXGBE_GSSR_MAC_CSR_SM);
  if (ret_val)
   return IXGBE_ERR_SWFW_SYNC;

  if (hw->eeprom.ops.read(hw, ++data_offset, &data_value))
   goto setup_sfp_err;
  while (data_value != 0xffff) {
   IXGBE_WRITE_REG(hw, IXGBE_CORECTL, data_value);
   IXGBE_WRITE_FLUSH(hw);
   if (hw->eeprom.ops.read(hw, ++data_offset, &data_value))
    goto setup_sfp_err;
  }


  hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_MAC_CSR_SM);




  usleep_range(hw->eeprom.semaphore_delay * 1000,
        hw->eeprom.semaphore_delay * 2000);


  ret_val = hw->mac.ops.prot_autoc_write(hw,
   hw->mac.orig_autoc | IXGBE_AUTOC_LMS_10G_SERIAL,
   0);

  if (ret_val) {
   hw_dbg(hw, " sfp module setup not complete\n");
   return IXGBE_ERR_SFP_SETUP_NOT_COMPLETE;
  }
 }

 return 0;

setup_sfp_err:

 hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_MAC_CSR_SM);



 usleep_range(hw->eeprom.semaphore_delay * 1000,
       hw->eeprom.semaphore_delay * 2000);
 hw_err(hw, "eeprom read at offset %d failed\n", data_offset);
 return IXGBE_ERR_SFP_SETUP_NOT_COMPLETE;
}
