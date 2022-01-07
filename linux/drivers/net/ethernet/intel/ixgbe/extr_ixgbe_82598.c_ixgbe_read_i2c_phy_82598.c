
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {int (* read_reg_mdi ) (struct ixgbe_hw*,int ,int ,int*) ;int (* write_reg_mdi ) (struct ixgbe_hw*,int ,int ,int) ;} ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ mac; TYPE_2__ phy; } ;
typedef int s32 ;


 int IXGBE_ERR_PHY ;
 int IXGBE_ERR_SFP_NOT_PRESENT ;
 int IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_PHY0_SM ;
 int IXGBE_GSSR_PHY1_SM ;
 int IXGBE_I2C_EEPROM_READ_MASK ;
 int IXGBE_I2C_EEPROM_STATUS_IN_PROGRESS ;
 int IXGBE_I2C_EEPROM_STATUS_MASK ;
 int IXGBE_I2C_EEPROM_STATUS_PASS ;
 int IXGBE_MDIO_PMA_PMD_SDA_SCL_ADDR ;
 int IXGBE_MDIO_PMA_PMD_SDA_SCL_DATA ;
 int IXGBE_MDIO_PMA_PMD_SDA_SCL_STAT ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_STATUS ;
 int IXGBE_STATUS_LAN_ID_1 ;
 int MDIO_MMD_PMAPMD ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_phy_nl ;
 scalar_t__ stub1 (struct ixgbe_hw*,int) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int) ;
 int stub3 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub4 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub5 (struct ixgbe_hw*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 ixgbe_read_i2c_phy_82598(struct ixgbe_hw *hw, u8 dev_addr,
        u8 byte_offset, u8 *eeprom_data)
{
 s32 status = 0;
 u16 sfp_addr = 0;
 u16 sfp_data = 0;
 u16 sfp_stat = 0;
 u16 gssr;
 u32 i;

 if (IXGBE_READ_REG(hw, IXGBE_STATUS) & IXGBE_STATUS_LAN_ID_1)
  gssr = IXGBE_GSSR_PHY1_SM;
 else
  gssr = IXGBE_GSSR_PHY0_SM;

 if (hw->mac.ops.acquire_swfw_sync(hw, gssr) != 0)
  return IXGBE_ERR_SWFW_SYNC;

 if (hw->phy.type == ixgbe_phy_nl) {





  sfp_addr = (dev_addr << 8) + byte_offset;
  sfp_addr = (sfp_addr | IXGBE_I2C_EEPROM_READ_MASK);
  hw->phy.ops.write_reg_mdi(hw,
       IXGBE_MDIO_PMA_PMD_SDA_SCL_ADDR,
       MDIO_MMD_PMAPMD,
       sfp_addr);


  for (i = 0; i < 100; i++) {
   hw->phy.ops.read_reg_mdi(hw,
      IXGBE_MDIO_PMA_PMD_SDA_SCL_STAT,
      MDIO_MMD_PMAPMD,
      &sfp_stat);
   sfp_stat = sfp_stat & IXGBE_I2C_EEPROM_STATUS_MASK;
   if (sfp_stat != IXGBE_I2C_EEPROM_STATUS_IN_PROGRESS)
    break;
   usleep_range(10000, 20000);
  }

  if (sfp_stat != IXGBE_I2C_EEPROM_STATUS_PASS) {
   hw_dbg(hw, "EEPROM read did not pass.\n");
   status = IXGBE_ERR_SFP_NOT_PRESENT;
   goto out;
  }


  hw->phy.ops.read_reg_mdi(hw, IXGBE_MDIO_PMA_PMD_SDA_SCL_DATA,
     MDIO_MMD_PMAPMD, &sfp_data);

  *eeprom_data = (u8)(sfp_data >> 8);
 } else {
  status = IXGBE_ERR_PHY;
 }

out:
 hw->mac.ops.release_swfw_sync(hw, gssr);
 return status;
}
