
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ req; } ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int QLCNIC_83XX_ADD_PORT0 ;
 int QLCNIC_83XX_ADD_PORT1 ;
 void* QLCNIC_83XX_EXTENDED_MEM_SIZE ;
 int QLCNIC_CMD_83XX_EXTEND_ISCSI_DUMP_CAP ;
 int dev_err (int *,char*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

int qlcnic_83xx_extend_md_capab(struct qlcnic_adapter *adapter)
{
 struct qlcnic_cmd_args cmd;
 int err;

 err = qlcnic_alloc_mbx_args(&cmd, adapter,
        QLCNIC_CMD_83XX_EXTEND_ISCSI_DUMP_CAP);
 if (err)
  return err;

 cmd.req.arg[1] = (QLCNIC_83XX_ADD_PORT0 | QLCNIC_83XX_ADD_PORT1);
 cmd.req.arg[2] = QLCNIC_83XX_EXTENDED_MEM_SIZE;
 cmd.req.arg[3] = QLCNIC_83XX_EXTENDED_MEM_SIZE;

 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err)
  dev_err(&adapter->pdev->dev,
   "failed to issue extend iSCSI minidump capability\n");

 return err;
}
