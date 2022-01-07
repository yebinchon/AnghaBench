
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * arg; } ;
struct qlcnic_cmd_args {TYPE_3__ rsp; } ;
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct TYPE_5__ {int port_config; } ;
struct TYPE_4__ {int dev; } ;


 int QLCNIC_CMD_GET_PORT_CONFIG ;
 int dev_info (int *,char*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int qlcnic_83xx_get_port_config(struct qlcnic_adapter *adapter)
{
 struct qlcnic_cmd_args cmd;
 int err;

 err = qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_GET_PORT_CONFIG);
 if (err)
  return err;

 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err)
  dev_info(&adapter->pdev->dev, "Get Port config failed\n");
 else
  adapter->ahw->port_config = cmd.rsp.arg[1];
 qlcnic_free_mbx_args(&cmd);
 return err;
}
