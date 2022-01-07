
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* rcap32; } ;
struct TYPE_5__ {void* rcap; } ;
struct TYPE_7__ {TYPE_2__ l1cfg32; TYPE_1__ l1cfg; } ;
struct fw_port_cmd {TYPE_3__ u; void* action_to_len16; void* op_to_portid; } ;
struct TYPE_8__ {unsigned int fw_caps_support; } ;
struct adapter {TYPE_4__ params; } ;
typedef int c ;


 unsigned int FW_CAPS16 ;
 int FW_CMD_EXEC_F ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_LEN16 (struct fw_port_cmd) ;
 int FW_PORT_ACTION_L1_CFG ;
 int FW_PORT_ACTION_L1_CFG32 ;
 int FW_PORT_CAP32_ANEG ;
 int FW_PORT_CAP_ANEG ;
 int FW_PORT_CMD ;
 int FW_PORT_CMD_ACTION_V (int ) ;
 int FW_PORT_CMD_PORTID_V (unsigned int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_port_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_port_cmd*,int,int *) ;

int t4_restart_aneg(struct adapter *adap, unsigned int mbox, unsigned int port)
{
 unsigned int fw_caps = adap->params.fw_caps_support;
 struct fw_port_cmd c;

 memset(&c, 0, sizeof(c));
 c.op_to_portid = cpu_to_be32(FW_CMD_OP_V(FW_PORT_CMD) |
         FW_CMD_REQUEST_F | FW_CMD_EXEC_F |
         FW_PORT_CMD_PORTID_V(port));
 c.action_to_len16 =
  cpu_to_be32(FW_PORT_CMD_ACTION_V(fw_caps == FW_CAPS16
       ? FW_PORT_ACTION_L1_CFG
       : FW_PORT_ACTION_L1_CFG32) |
       FW_LEN16(c));
 if (fw_caps == FW_CAPS16)
  c.u.l1cfg.rcap = cpu_to_be32(FW_PORT_CAP_ANEG);
 else
  c.u.l1cfg32.rcap32 = cpu_to_be32(FW_PORT_CAP32_ANEG);
 return t4_wr_mbox(adap, mbox, &c, sizeof(c), ((void*)0));
}
