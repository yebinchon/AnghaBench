
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qlcnic_hardware_context {int dummy; } ;
struct TYPE_4__ {int* arg; int num; } ;
struct TYPE_3__ {int num; scalar_t__* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; TYPE_1__ req; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;


 int QLCNIC_CDRP_ARG (int) ;
 int QLCNIC_CDRP_CRB_OFFSET ;
 scalar_t__ QLCNIC_CDRP_FORM_CMD (scalar_t__) ;
 scalar_t__ QLCNIC_CDRP_RSP_FAIL ;
 scalar_t__ QLCNIC_CDRP_RSP_OK ;
 scalar_t__ QLCNIC_CDRP_RSP_TIMEOUT ;





 scalar_t__ QLCNIC_RCODE_SUCCESS ;

 int QLCNIC_SIGN_CRB_OFFSET ;
 void* QLCRD32 (struct qlcnic_adapter*,int ,int*) ;
 int QLCWR32 (struct qlcnic_adapter*,int ,scalar_t__) ;
 int dev_err (int *,char const*,scalar_t__) ;
 scalar_t__ qlcnic_api_lock (struct qlcnic_adapter*) ;
 int qlcnic_api_unlock (struct qlcnic_adapter*) ;
 int qlcnic_dump_mbx (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 scalar_t__ qlcnic_get_cmd_signature (struct qlcnic_hardware_context*) ;
 scalar_t__ qlcnic_poll_rsp (struct qlcnic_adapter*) ;

int qlcnic_82xx_issue_cmd(struct qlcnic_adapter *adapter,
     struct qlcnic_cmd_args *cmd)
{
 int i, err = 0;
 u32 rsp;
 u32 signature;
 struct pci_dev *pdev = adapter->pdev;
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 const char *fmt;

 signature = qlcnic_get_cmd_signature(ahw);


 if (qlcnic_api_lock(adapter)) {
  cmd->rsp.arg[0] = 128;
  return cmd->rsp.arg[0];
 }

 QLCWR32(adapter, QLCNIC_SIGN_CRB_OFFSET, signature);
 for (i = 1; i < cmd->req.num; i++)
  QLCWR32(adapter, QLCNIC_CDRP_ARG(i), cmd->req.arg[i]);
 QLCWR32(adapter, QLCNIC_CDRP_CRB_OFFSET,
  QLCNIC_CDRP_FORM_CMD(cmd->req.arg[0]));
 rsp = qlcnic_poll_rsp(adapter);

 if (rsp == QLCNIC_CDRP_RSP_TIMEOUT) {
  dev_err(&pdev->dev, "command timeout, response = 0x%x\n", rsp);
  cmd->rsp.arg[0] = 128;
 } else if (rsp == QLCNIC_CDRP_RSP_FAIL) {
  cmd->rsp.arg[0] = QLCRD32(adapter, QLCNIC_CDRP_ARG(1), &err);
  switch (cmd->rsp.arg[0]) {
  case 132:
   fmt = "CDRP invalid args: [%d]\n";
   break;
  case 129:
  case 131:
   fmt = "CDRP command not supported: [%d]\n";
   break;
  case 130:
   fmt = "CDRP requested action not permitted: [%d]\n";
   break;
  case 133:
   fmt = "CDRP invalid or unknown cmd received: [%d]\n";
   break;
  case 128:
   fmt = "CDRP command timeout: [%d]\n";
   break;
  default:
   fmt = "CDRP command failed: [%d]\n";
   break;
  }
  dev_err(&pdev->dev, fmt, cmd->rsp.arg[0]);
  qlcnic_dump_mbx(adapter, cmd);
 } else if (rsp == QLCNIC_CDRP_RSP_OK)
  cmd->rsp.arg[0] = QLCNIC_RCODE_SUCCESS;

 for (i = 1; i < cmd->rsp.num; i++)
  cmd->rsp.arg[i] = QLCRD32(adapter, QLCNIC_CDRP_ARG(i), &err);


 qlcnic_api_unlock(adapter);
 return cmd->rsp.arg[0];
}
