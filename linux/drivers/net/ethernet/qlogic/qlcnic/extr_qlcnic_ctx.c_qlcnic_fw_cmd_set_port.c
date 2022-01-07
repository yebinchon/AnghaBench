
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {int dummy; } ;


 int QLCNIC_CMD_CONFIG_PORT ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

int
qlcnic_fw_cmd_set_port(struct qlcnic_adapter *adapter, u32 config)
{
 int err;
 struct qlcnic_cmd_args cmd;

 err = qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_CONFIG_PORT);
 if (err)
  return err;

 cmd.req.arg[1] = config;
 err = qlcnic_issue_cmd(adapter, &cmd);
 qlcnic_free_mbx_args(&cmd);
 return err;
}
