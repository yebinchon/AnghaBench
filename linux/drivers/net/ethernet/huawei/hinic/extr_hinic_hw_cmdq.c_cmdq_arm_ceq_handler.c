
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_ctrl {int ctrl_info; } ;
struct hinic_cmdq_wqe_scmd {struct hinic_ctrl ctrl; } ;
struct hinic_cmdq_direct_wqe {struct hinic_cmdq_wqe_scmd wqe_scmd; } ;
struct hinic_cmdq_wqe {struct hinic_cmdq_direct_wqe direct_wqe; } ;
struct hinic_cmdq {int wq; } ;


 int CMDQ_WQE_COMPLETED (int ) ;
 int EBUSY ;
 int WQE_SCMD_SIZE ;
 int be32_to_cpu (int ) ;
 int clear_wqe_complete_bit (struct hinic_cmdq*,struct hinic_cmdq_wqe*) ;
 int hinic_put_wqe (int ,int ) ;

__attribute__((used)) static int cmdq_arm_ceq_handler(struct hinic_cmdq *cmdq,
    struct hinic_cmdq_wqe *wqe)
{
 struct hinic_cmdq_direct_wqe *direct_wqe = &wqe->direct_wqe;
 struct hinic_cmdq_wqe_scmd *wqe_scmd;
 struct hinic_ctrl *ctrl;
 u32 ctrl_info;

 wqe_scmd = &direct_wqe->wqe_scmd;
 ctrl = &wqe_scmd->ctrl;
 ctrl_info = be32_to_cpu(ctrl->ctrl_info);


 if (!CMDQ_WQE_COMPLETED(ctrl_info))
  return -EBUSY;

 clear_wqe_complete_bit(cmdq, wqe);

 hinic_put_wqe(cmdq->wq, WQE_SCMD_SIZE);
 return 0;
}
