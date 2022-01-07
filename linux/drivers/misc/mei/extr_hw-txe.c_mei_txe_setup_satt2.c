
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_txe_hw {int dummy; } ;
struct mei_device {int dev; } ;
typedef int phys_addr_t ;


 int EINVAL ;
 int SATT2_BRG_BA_LSB_REG ;
 int SATT2_CTRL_BR_BASE_ADDR_REG_SHIFT ;
 int SATT2_CTRL_REG ;
 int SATT2_CTRL_VALID_MSK ;
 int SATT2_SAP_SIZE_REG ;
 int SATT_RANGE_MAX ;
 int dev_dbg (int ,char*,int,int,int) ;
 int lower_32_bits (int ) ;
 int mei_txe_br_reg_write (struct mei_txe_hw*,int ,int) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;
 int upper_32_bits (int ) ;

int mei_txe_setup_satt2(struct mei_device *dev, phys_addr_t addr, u32 range)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);

 u32 lo32 = lower_32_bits(addr);
 u32 hi32 = upper_32_bits(addr);
 u32 ctrl;


 if (hi32 & ~0xF)
  return -EINVAL;


 if (lo32 & 0xF)
  return -EINVAL;


 if (range & 0x4)
  return -EINVAL;


 if (range > SATT_RANGE_MAX)
  return -EINVAL;

 ctrl = SATT2_CTRL_VALID_MSK;
 ctrl |= hi32 << SATT2_CTRL_BR_BASE_ADDR_REG_SHIFT;

 mei_txe_br_reg_write(hw, SATT2_SAP_SIZE_REG, range);
 mei_txe_br_reg_write(hw, SATT2_BRG_BA_LSB_REG, lo32);
 mei_txe_br_reg_write(hw, SATT2_CTRL_REG, ctrl);
 dev_dbg(dev->dev, "SATT2: SAP_SIZE_OFFSET=0x%08X, BRG_BA_LSB_OFFSET=0x%08X, CTRL_OFFSET=0x%08X\n",
  range, lo32, ctrl);

 return 0;
}
