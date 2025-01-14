
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct link_config {int pcaps; scalar_t__ autoneg; } ;
struct TYPE_7__ {void* rcap32; } ;
struct TYPE_6__ {void* rcap; } ;
struct TYPE_8__ {TYPE_3__ l1cfg32; TYPE_2__ l1cfg; } ;
struct fw_port_cmd {TYPE_4__ u; void* action_to_len16; void* op_to_portid; } ;
struct TYPE_5__ {unsigned int fw_caps_support; } ;
struct adapter {int pdev_dev; TYPE_1__ params; } ;
typedef int fw_port_cap32_t ;
typedef int cmd ;


 scalar_t__ AUTONEG_ENABLE ;
 int EINVAL ;
 unsigned int FW_CAPS16 ;
 int FW_CMD_EXEC_F ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_LEN16 (struct fw_port_cmd) ;
 int FW_PORT_ACTION_L1_CFG ;
 int FW_PORT_ACTION_L1_CFG32 ;
 int FW_PORT_CAP32_ANEG ;
 int FW_PORT_CMD ;
 int FW_PORT_CMD_ACTION_V (int ) ;
 int FW_PORT_CMD_PORTID_V (unsigned int) ;
 void* cpu_to_be32 (int) ;
 int dev_err (int ,char*,int,int) ;
 int fwcaps32_to_caps16 (int) ;
 int memset (struct fw_port_cmd*,int ,int) ;
 int t4_link_acaps (struct adapter*,unsigned int,struct link_config*) ;
 int t4_wr_mbox_meat_timeout (struct adapter*,unsigned int,struct fw_port_cmd*,int,int *,int ,int) ;

int t4_link_l1cfg_core(struct adapter *adapter, unsigned int mbox,
         unsigned int port, struct link_config *lc,
         u8 sleep_ok, int timeout)
{
 unsigned int fw_caps = adapter->params.fw_caps_support;
 struct fw_port_cmd cmd;
 fw_port_cap32_t rcap;
 int ret;

 if (!(lc->pcaps & FW_PORT_CAP32_ANEG) &&
     lc->autoneg == AUTONEG_ENABLE) {
  return -EINVAL;
 }




 rcap = t4_link_acaps(adapter, port, lc);
 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_portid = cpu_to_be32(FW_CMD_OP_V(FW_PORT_CMD) |
           FW_CMD_REQUEST_F | FW_CMD_EXEC_F |
           FW_PORT_CMD_PORTID_V(port));
 cmd.action_to_len16 =
  cpu_to_be32(FW_PORT_CMD_ACTION_V(fw_caps == FW_CAPS16
       ? FW_PORT_ACTION_L1_CFG
       : FW_PORT_ACTION_L1_CFG32) |
       FW_LEN16(cmd));
 if (fw_caps == FW_CAPS16)
  cmd.u.l1cfg.rcap = cpu_to_be32(fwcaps32_to_caps16(rcap));
 else
  cmd.u.l1cfg32.rcap32 = cpu_to_be32(rcap);

 ret = t4_wr_mbox_meat_timeout(adapter, mbox, &cmd, sizeof(cmd), ((void*)0),
          sleep_ok, timeout);







 if (ret) {
  dev_err(adapter->pdev_dev,
   "Requested Port Capabilities %#x rejected, error %d\n",
   rcap, -ret);
  return ret;
 }
 return 0;
}
