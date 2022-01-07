
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_reg_rw {int type; } ;


 int HostCmd_CMD_BBP_REG_ACCESS ;
 int HostCmd_CMD_CAU_REG_ACCESS ;
 int HostCmd_CMD_MAC_REG_ACCESS ;
 int HostCmd_CMD_PMIC_REG_ACCESS ;
 int HostCmd_CMD_RF_REG_ACCESS ;





 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_ds_reg_rw*,int) ;

__attribute__((used)) static int mwifiex_reg_mem_ioctl_reg_rw(struct mwifiex_private *priv,
     struct mwifiex_ds_reg_rw *reg_rw,
     u16 action)
{
 u16 cmd_no;

 switch (reg_rw->type) {
 case 130:
  cmd_no = HostCmd_CMD_MAC_REG_ACCESS;
  break;
 case 132:
  cmd_no = HostCmd_CMD_BBP_REG_ACCESS;
  break;
 case 128:
  cmd_no = HostCmd_CMD_RF_REG_ACCESS;
  break;
 case 129:
  cmd_no = HostCmd_CMD_PMIC_REG_ACCESS;
  break;
 case 131:
  cmd_no = HostCmd_CMD_CAU_REG_ACCESS;
  break;
 default:
  return -1;
 }

 return mwifiex_send_cmd(priv, cmd_no, action, 0, reg_rw, 1);
}
