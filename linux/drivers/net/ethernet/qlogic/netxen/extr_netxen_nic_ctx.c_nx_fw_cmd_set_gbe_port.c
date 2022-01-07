
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {void* arg3; void* arg2; void* arg1; int cmd; } ;
struct netxen_cmd_args {TYPE_1__ req; } ;
struct netxen_adapter {int dummy; } ;
typedef int cmd ;


 int NX_CDRP_CMD_CONFIG_GBE_PORT ;
 int memset (struct netxen_cmd_args*,int ,int) ;
 int netxen_issue_cmd (struct netxen_adapter*,struct netxen_cmd_args*) ;

int
nx_fw_cmd_set_gbe_port(struct netxen_adapter *adapter,
   u32 speed, u32 duplex, u32 autoneg)
{
 struct netxen_cmd_args cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.req.cmd = NX_CDRP_CMD_CONFIG_GBE_PORT;
 cmd.req.arg1 = speed;
 cmd.req.arg2 = duplex;
 cmd.req.arg3 = autoneg;
 return netxen_issue_cmd(adapter, &cmd);
}
