
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_hardware_context {int port_type; } ;
struct TYPE_3__ {int * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ rsp; } ;
struct qlcnic_adapter {TYPE_2__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_4__ {int dev; } ;


 int QLCNIC_CMD_GET_LINK_STATUS ;
 int QLCNIC_GBE ;
 int QLCNIC_XGBE ;




 int QLC_83XX_SFP_MODULE_TYPE (int ) ;
 int dev_info (int *,char*,int) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

void qlcnic_83xx_get_port_type(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlcnic_cmd_args cmd;
 u32 config;
 int err;

 err = qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_GET_LINK_STATUS);
 if (err)
  return;

 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err) {
  dev_info(&adapter->pdev->dev,
    "Get Link Status Command failed: 0x%x\n", err);
  goto out;
 } else {
  config = cmd.rsp.arg[3];

  switch (QLC_83XX_SFP_MODULE_TYPE(config)) {
  case 129:
  case 130:
  case 131:
  case 128:
   ahw->port_type = QLCNIC_GBE;
   break;
  default:
   ahw->port_type = QLCNIC_XGBE;
  }
 }
out:
 qlcnic_free_mbx_args(&cmd);
}
