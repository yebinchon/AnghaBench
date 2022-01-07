
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int (* write_reg ) (struct ixgbe_hw*,int,int ,int) ;int (* read_reg ) (struct ixgbe_hw*,int,int ,int*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {scalar_t__ (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ phy; TYPE_2__ eeprom; } ;
typedef scalar_t__ s32 ;


 int IXGBE_CONTROL_EOL_NL ;
 int IXGBE_CONTROL_MASK_NL ;

 int IXGBE_CONTROL_SHIFT_NL ;
 int IXGBE_CONTROL_SOL_NL ;
 int IXGBE_DATA_MASK_NL ;


 scalar_t__ IXGBE_ERR_PHY ;
 int MDIO_CTRL1 ;
 int MDIO_CTRL1_RESET ;
 int MDIO_MMD_PHYXS ;
 int MDIO_MMD_PMAPMD ;
 int hw_dbg (struct ixgbe_hw*,char*,...) ;
 int hw_err (struct ixgbe_hw*,char*,int) ;
 scalar_t__ ixgbe_check_reset_blocked (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_get_sfp_init_sequence_offsets (struct ixgbe_hw*,int*,int*) ;
 int stub1 (struct ixgbe_hw*,int,int ,int*) ;
 int stub2 (struct ixgbe_hw*,int,int ,int) ;
 int stub3 (struct ixgbe_hw*,int,int ,int*) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub5 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub6 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub7 (struct ixgbe_hw*,int,int*) ;
 int stub8 (struct ixgbe_hw*,int,int ,int) ;
 int usleep_range (int,int) ;

s32 ixgbe_reset_phy_nl(struct ixgbe_hw *hw)
{
 u16 phy_offset, control, eword, edata, block_crc;
 bool end_data = 0;
 u16 list_offset, data_offset;
 u16 phy_data = 0;
 s32 ret_val;
 u32 i;


 if (ixgbe_check_reset_blocked(hw))
  return 0;

 hw->phy.ops.read_reg(hw, MDIO_CTRL1, MDIO_MMD_PHYXS, &phy_data);


 hw->phy.ops.write_reg(hw, MDIO_CTRL1, MDIO_MMD_PHYXS,
         (phy_data | MDIO_CTRL1_RESET));

 for (i = 0; i < 100; i++) {
  hw->phy.ops.read_reg(hw, MDIO_CTRL1, MDIO_MMD_PHYXS,
         &phy_data);
  if ((phy_data & MDIO_CTRL1_RESET) == 0)
   break;
  usleep_range(10000, 20000);
 }

 if ((phy_data & MDIO_CTRL1_RESET) != 0) {
  hw_dbg(hw, "PHY reset did not complete.\n");
  return IXGBE_ERR_PHY;
 }


 ret_val = ixgbe_get_sfp_init_sequence_offsets(hw, &list_offset,
            &data_offset);
 if (ret_val)
  return ret_val;

 ret_val = hw->eeprom.ops.read(hw, data_offset, &block_crc);
 data_offset++;
 while (!end_data) {



  ret_val = hw->eeprom.ops.read(hw, data_offset, &eword);
  if (ret_val)
   goto err_eeprom;
  control = (eword & IXGBE_CONTROL_MASK_NL) >>
      IXGBE_CONTROL_SHIFT_NL;
  edata = eword & IXGBE_DATA_MASK_NL;
  switch (control) {
  case 128:
   data_offset++;
   hw_dbg(hw, "DELAY: %d MS\n", edata);
   usleep_range(edata * 1000, edata * 2000);
   break;
  case 129:
   hw_dbg(hw, "DATA:\n");
   data_offset++;
   ret_val = hw->eeprom.ops.read(hw, data_offset++,
            &phy_offset);
   if (ret_val)
    goto err_eeprom;
   for (i = 0; i < edata; i++) {
    ret_val = hw->eeprom.ops.read(hw, data_offset,
             &eword);
    if (ret_val)
     goto err_eeprom;
    hw->phy.ops.write_reg(hw, phy_offset,
            MDIO_MMD_PMAPMD, eword);
    hw_dbg(hw, "Wrote %4.4x to %4.4x\n", eword,
           phy_offset);
    data_offset++;
    phy_offset++;
   }
   break;
  case 130:
   data_offset++;
   hw_dbg(hw, "CONTROL:\n");
   if (edata == IXGBE_CONTROL_EOL_NL) {
    hw_dbg(hw, "EOL\n");
    end_data = 1;
   } else if (edata == IXGBE_CONTROL_SOL_NL) {
    hw_dbg(hw, "SOL\n");
   } else {
    hw_dbg(hw, "Bad control value\n");
    return IXGBE_ERR_PHY;
   }
   break;
  default:
   hw_dbg(hw, "Bad control type\n");
   return IXGBE_ERR_PHY;
  }
 }

 return ret_val;

err_eeprom:
 hw_err(hw, "eeprom read at offset %d failed\n", data_offset);
 return IXGBE_ERR_PHY;
}
