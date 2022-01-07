
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_dcb {struct qlcnic_adapter* adapter; } ;
struct TYPE_3__ {int * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ rsp; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int QLCNIC_CMD_DCB_QUERY_CAP ;
 int dev_err (int *,char*,int) ;
 int memcpy (char*,int *,int) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int __qlcnic_dcb_query_hw_capability(struct qlcnic_dcb *dcb, char *buf)
{
 struct qlcnic_adapter *adapter = dcb->adapter;
 struct qlcnic_cmd_args cmd;
 u32 mbx_out;
 int err;

 err = qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_DCB_QUERY_CAP);
 if (err)
  return err;

 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err) {
  dev_err(&adapter->pdev->dev,
   "Failed to query DCBX capability, err %d\n", err);
 } else {
  mbx_out = cmd.rsp.arg[1];
  if (buf)
   memcpy(buf, &mbx_out, sizeof(u32));
 }

 qlcnic_free_mbx_args(&cmd);

 return err;
}
