
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int IXGBE_CS4227_CHECK_DELAY ;
 int IXGBE_CS4227_EEPROM_LOAD_OK ;
 int IXGBE_CS4227_EEPROM_STATUS ;
 int IXGBE_CS4227_EFUSE_STATUS ;
 int IXGBE_CS4227_RESET_DELAY ;
 scalar_t__ IXGBE_CS4227_RESET_HOLD ;
 scalar_t__ IXGBE_CS4227_RETRIES ;
 scalar_t__ IXGBE_ERR_PHY ;
 int IXGBE_PE_BIT1 ;
 int IXGBE_PE_CONFIG ;
 int IXGBE_PE_OUTPUT ;
 int hw_err (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_read_cs4227 (struct ixgbe_hw*,int ,int*) ;
 scalar_t__ ixgbe_read_pe (struct ixgbe_hw*,int ,int *) ;
 scalar_t__ ixgbe_write_pe (struct ixgbe_hw*,int ,int ) ;
 int msleep (int ) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static s32 ixgbe_reset_cs4227(struct ixgbe_hw *hw)
{
 s32 status;
 u32 retry;
 u16 value;
 u8 reg;


 status = ixgbe_read_pe(hw, IXGBE_PE_OUTPUT, &reg);
 if (status)
  return status;
 reg |= IXGBE_PE_BIT1;
 status = ixgbe_write_pe(hw, IXGBE_PE_OUTPUT, reg);
 if (status)
  return status;

 status = ixgbe_read_pe(hw, IXGBE_PE_CONFIG, &reg);
 if (status)
  return status;
 reg &= ~IXGBE_PE_BIT1;
 status = ixgbe_write_pe(hw, IXGBE_PE_CONFIG, reg);
 if (status)
  return status;

 status = ixgbe_read_pe(hw, IXGBE_PE_OUTPUT, &reg);
 if (status)
  return status;
 reg &= ~IXGBE_PE_BIT1;
 status = ixgbe_write_pe(hw, IXGBE_PE_OUTPUT, reg);
 if (status)
  return status;

 usleep_range(IXGBE_CS4227_RESET_HOLD, IXGBE_CS4227_RESET_HOLD + 100);

 status = ixgbe_read_pe(hw, IXGBE_PE_OUTPUT, &reg);
 if (status)
  return status;
 reg |= IXGBE_PE_BIT1;
 status = ixgbe_write_pe(hw, IXGBE_PE_OUTPUT, reg);
 if (status)
  return status;


 msleep(IXGBE_CS4227_RESET_DELAY);
 for (retry = 0; retry < IXGBE_CS4227_RETRIES; retry++) {
  status = ixgbe_read_cs4227(hw, IXGBE_CS4227_EFUSE_STATUS,
        &value);
  if (!status && value == IXGBE_CS4227_EEPROM_LOAD_OK)
   break;
  msleep(IXGBE_CS4227_CHECK_DELAY);
 }
 if (retry == IXGBE_CS4227_RETRIES) {
  hw_err(hw, "CS4227 reset did not complete\n");
  return IXGBE_ERR_PHY;
 }

 status = ixgbe_read_cs4227(hw, IXGBE_CS4227_EEPROM_STATUS, &value);
 if (status || !(value & IXGBE_CS4227_EEPROM_LOAD_OK)) {
  hw_err(hw, "CS4227 EEPROM did not load successfully\n");
  return IXGBE_ERR_PHY;
 }

 return 0;
}
