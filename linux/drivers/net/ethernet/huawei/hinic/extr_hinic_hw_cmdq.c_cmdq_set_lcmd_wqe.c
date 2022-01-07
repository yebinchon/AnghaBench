
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int direct_resp; } ;
struct hinic_cmdq_wqe_lcmd {TYPE_1__ completion; } ;
struct hinic_cmdq_wqe {struct hinic_cmdq_wqe_lcmd wqe_lcmd; } ;
struct hinic_cmdq_buf {int dummy; } ;
typedef enum hinic_mod_type { ____Placeholder_hinic_mod_type } hinic_mod_type ;
typedef enum hinic_cmd_ack_type { ____Placeholder_hinic_cmd_ack_type } hinic_cmd_ack_type ;
typedef enum completion_format { ____Placeholder_completion_format } completion_format ;
typedef enum cmdq_cmd_type { ____Placeholder_cmdq_cmd_type } cmdq_cmd_type ;


 int BUFDESC_LCMD_LEN ;


 int COMPLETE_DIRECT ;
 int COMPLETE_SGE ;
 int DATA_SGE ;
 int cmdq_prepare_wqe_ctrl (struct hinic_cmdq_wqe*,int,int,int,int ,int ,int,int ,int ) ;
 int cmdq_set_lcmd_bufdesc (struct hinic_cmdq_wqe_lcmd*,struct hinic_cmdq_buf*) ;
 int cmdq_set_sge_completion (TYPE_1__*,struct hinic_cmdq_buf*) ;

__attribute__((used)) static void cmdq_set_lcmd_wqe(struct hinic_cmdq_wqe *wqe,
         enum cmdq_cmd_type cmd_type,
         struct hinic_cmdq_buf *buf_in,
         struct hinic_cmdq_buf *buf_out, int wrapped,
         enum hinic_cmd_ack_type ack_type,
         enum hinic_mod_type mod, u8 cmd, u16 prod_idx)
{
 struct hinic_cmdq_wqe_lcmd *wqe_lcmd = &wqe->wqe_lcmd;
 enum completion_format complete_format;

 switch (cmd_type) {
 case 128:
  complete_format = COMPLETE_SGE;
  cmdq_set_sge_completion(&wqe_lcmd->completion, buf_out);
  break;
 case 129:
  complete_format = COMPLETE_DIRECT;
  wqe_lcmd->completion.direct_resp = 0;
  break;
 }

 cmdq_prepare_wqe_ctrl(wqe, wrapped, ack_type, mod, cmd,
         prod_idx, complete_format, DATA_SGE,
         BUFDESC_LCMD_LEN);

 cmdq_set_lcmd_bufdesc(wqe_lcmd, buf_in);
}
