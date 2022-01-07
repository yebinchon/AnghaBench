
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct lan743x_adapter {int dummy; } ;


 int E2P_CMD ;
 scalar_t__ E2P_CMD_EPC_ADDR_MASK_ ;
 scalar_t__ E2P_CMD_EPC_BUSY_ ;
 scalar_t__ E2P_CMD_EPC_CMD_READ_ ;
 int E2P_DATA ;
 int EINVAL ;
 scalar_t__ MAX_EEPROM_SIZE ;
 scalar_t__ lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,scalar_t__) ;
 int lan743x_eeprom_confirm_not_busy (struct lan743x_adapter*) ;
 int lan743x_eeprom_wait (struct lan743x_adapter*) ;

__attribute__((used)) static int lan743x_eeprom_read(struct lan743x_adapter *adapter,
          u32 offset, u32 length, u8 *data)
{
 int retval;
 u32 val;
 int i;

 if (offset + length > MAX_EEPROM_SIZE)
  return -EINVAL;

 retval = lan743x_eeprom_confirm_not_busy(adapter);
 if (retval)
  return retval;

 for (i = 0; i < length; i++) {
  val = E2P_CMD_EPC_BUSY_ | E2P_CMD_EPC_CMD_READ_;
  val |= (offset & E2P_CMD_EPC_ADDR_MASK_);
  lan743x_csr_write(adapter, E2P_CMD, val);

  retval = lan743x_eeprom_wait(adapter);
  if (retval < 0)
   return retval;

  val = lan743x_csr_read(adapter, E2P_DATA);
  data[i] = val & 0xFF;
  offset++;
 }

 return 0;
}
