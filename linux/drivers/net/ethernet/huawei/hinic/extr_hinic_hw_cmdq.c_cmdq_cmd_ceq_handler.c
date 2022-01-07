
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hinic_status {int status_info; } ;
struct hinic_ctrl {int ctrl_info; } ;
struct hinic_cmdq_wqe_lcmd {struct hinic_ctrl ctrl; struct hinic_status status; } ;
struct hinic_cmdq_wqe {struct hinic_cmdq_wqe_lcmd wqe_lcmd; } ;
struct hinic_cmdq {int wq; } ;


 int CMDQ_WQE_COMPLETED (int ) ;
 int CMDQ_WQE_ERRCODE_GET (int ,int ) ;
 int EBUSY ;
 int VAL ;
 int WQE_LCMD_SIZE ;
 int be32_to_cpu (int ) ;
 int clear_wqe_complete_bit (struct hinic_cmdq*,struct hinic_cmdq_wqe*) ;
 int cmdq_sync_cmd_handler (struct hinic_cmdq*,int ,int) ;
 int hinic_put_wqe (int ,int ) ;

__attribute__((used)) static int cmdq_cmd_ceq_handler(struct hinic_cmdq *cmdq, u16 ci,
    struct hinic_cmdq_wqe *cmdq_wqe)
{
 struct hinic_cmdq_wqe_lcmd *wqe_lcmd = &cmdq_wqe->wqe_lcmd;
 struct hinic_status *status = &wqe_lcmd->status;
 struct hinic_ctrl *ctrl = &wqe_lcmd->ctrl;
 int errcode;

 if (!CMDQ_WQE_COMPLETED(be32_to_cpu(ctrl->ctrl_info)))
  return -EBUSY;

 errcode = CMDQ_WQE_ERRCODE_GET(be32_to_cpu(status->status_info), VAL);

 cmdq_sync_cmd_handler(cmdq, ci, errcode);

 clear_wqe_complete_bit(cmdq, cmdq_wqe);
 hinic_put_wqe(cmdq->wq, WQE_LCMD_SIZE);
 return 0;
}
