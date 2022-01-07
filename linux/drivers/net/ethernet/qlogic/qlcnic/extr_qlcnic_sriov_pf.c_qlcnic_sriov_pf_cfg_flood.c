
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int QLCNIC_CMD_SET_NIC_INFO ;
 int QLC_FLOOD_MODE ;
 int QLC_VF_FLOOD_BIT ;
 int dev_err (int *,char*,int) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int qlcnic_sriov_pf_cfg_flood(struct qlcnic_adapter *adapter)
{
 struct qlcnic_cmd_args cmd;
 int err;

 err = qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_SET_NIC_INFO);
 if (err)
  return err;

 cmd.req.arg[1] = QLC_FLOOD_MODE | QLC_VF_FLOOD_BIT;

 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err)
  dev_err(&adapter->pdev->dev,
   "Failed to configure VF Flood bit on PF, err=%d\n",
   err);

 qlcnic_free_mbx_args(&cmd);
 return err;
}
