
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; int flags; } ;
struct TYPE_4__ {int dev; } ;


 int BIT_16 ;
 int QLCNIC_CMD_SET_NIC_INFO ;
 int QLCNIC_VLAN_FILTERING ;
 int QLC_SRIOV_ALLOW_VLAN0 ;
 int dev_err (int *,char*,int) ;
 scalar_t__ qlcnic_84xx_check (struct qlcnic_adapter*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int qlcnic_sriov_pf_cfg_vlan_filtering(struct qlcnic_adapter *adapter,
           u8 enable)
{
 struct qlcnic_cmd_args cmd;
 int err;

 err = qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_SET_NIC_INFO);
 if (err)
  return err;

 cmd.req.arg[1] = 0x4;
 if (enable) {
  adapter->flags |= QLCNIC_VLAN_FILTERING;
  cmd.req.arg[1] |= BIT_16;
  if (qlcnic_84xx_check(adapter))
   cmd.req.arg[1] |= QLC_SRIOV_ALLOW_VLAN0;
 } else {
  adapter->flags &= ~QLCNIC_VLAN_FILTERING;
 }

 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err)
  dev_err(&adapter->pdev->dev,
   "Failed to configure VLAN filtering, err=%d\n", err);

 qlcnic_free_mbx_args(&cmd);
 return err;
}
