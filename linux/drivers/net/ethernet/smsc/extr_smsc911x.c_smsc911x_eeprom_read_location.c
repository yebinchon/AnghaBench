
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct smsc911x_data {int dummy; } ;


 size_t E2P_CMD_EPC_CMD_READ_ ;
 int E2P_DATA ;
 int SMSC_TRACE (struct smsc911x_data*,int ,char*,size_t) ;
 int drv ;
 int smsc911x_eeprom_send_cmd (struct smsc911x_data*,size_t) ;
 size_t smsc911x_reg_read (struct smsc911x_data*,int ) ;

__attribute__((used)) static int smsc911x_eeprom_read_location(struct smsc911x_data *pdata,
      u8 address, u8 *data)
{
 u32 op = E2P_CMD_EPC_CMD_READ_ | address;
 int ret;

 SMSC_TRACE(pdata, drv, "address 0x%x", address);
 ret = smsc911x_eeprom_send_cmd(pdata, op);

 if (!ret)
  data[address] = smsc911x_reg_read(pdata, E2P_DATA);

 return ret;
}
