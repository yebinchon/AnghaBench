
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smsc911x_data {int dummy; } ;


 int E2P_CMD ;
 int E2P_CMD_EPC_BUSY_ ;
 int E2P_CMD_EPC_TIMEOUT_ ;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int SMSC_TRACE (struct smsc911x_data*,int ,char*,...) ;
 int SMSC_WARN (struct smsc911x_data*,int ,char*) ;
 int drv ;
 int msleep (int) ;
 int smsc911x_reg_read (struct smsc911x_data*,int ) ;
 int smsc911x_reg_write (struct smsc911x_data*,int ,int) ;

__attribute__((used)) static int smsc911x_eeprom_send_cmd(struct smsc911x_data *pdata, u32 op)
{
 int timeout = 100;
 u32 e2cmd;

 SMSC_TRACE(pdata, drv, "op 0x%08x", op);
 if (smsc911x_reg_read(pdata, E2P_CMD) & E2P_CMD_EPC_BUSY_) {
  SMSC_WARN(pdata, drv, "Busy at start");
  return -EBUSY;
 }

 e2cmd = op | E2P_CMD_EPC_BUSY_;
 smsc911x_reg_write(pdata, E2P_CMD, e2cmd);

 do {
  msleep(1);
  e2cmd = smsc911x_reg_read(pdata, E2P_CMD);
 } while ((e2cmd & E2P_CMD_EPC_BUSY_) && (--timeout));

 if (!timeout) {
  SMSC_TRACE(pdata, drv, "TIMED OUT");
  return -EAGAIN;
 }

 if (e2cmd & E2P_CMD_EPC_TIMEOUT_) {
  SMSC_TRACE(pdata, drv, "Error occurred during eeprom operation");
  return -EINVAL;
 }

 return 0;
}
