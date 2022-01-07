
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int direct_resp; } ;
struct hinic_cmdq_wqe_scmd {TYPE_1__ completion; } ;
struct hinic_cmdq_direct_wqe {struct hinic_cmdq_wqe_scmd wqe_scmd; } ;
struct hinic_cmdq_wqe {struct hinic_cmdq_direct_wqe direct_wqe; } ;
struct hinic_cmdq_buf {int dummy; } ;
typedef enum hinic_mod_type { ____Placeholder_hinic_mod_type } hinic_mod_type ;
typedef enum hinic_cmd_ack_type { ____Placeholder_hinic_cmd_ack_type } hinic_cmd_ack_type ;
typedef enum completion_format { ____Placeholder_completion_format } completion_format ;
typedef enum cmdq_cmd_type { ____Placeholder_cmdq_cmd_type } cmdq_cmd_type ;


 int BUFDESC_SCMD_LEN ;


 int COMPLETE_DIRECT ;
 int COMPLETE_SGE ;
 int DATA_DIRECT ;
 int cmdq_prepare_wqe_ctrl (struct hinic_cmdq_wqe*,int,int,int,int ,int ,int,int ,int ) ;
 int cmdq_set_direct_wqe_data (struct hinic_cmdq_direct_wqe*,void*,int ) ;
 int cmdq_set_sge_completion (TYPE_1__*,struct hinic_cmdq_buf*) ;

__attribute__((used)) static void cmdq_set_direct_wqe(struct hinic_cmdq_wqe *wqe,
    enum cmdq_cmd_type cmd_type,
    void *buf_in, u16 in_size,
    struct hinic_cmdq_buf *buf_out, int wrapped,
    enum hinic_cmd_ack_type ack_type,
    enum hinic_mod_type mod, u8 cmd, u16 prod_idx)
{
 struct hinic_cmdq_direct_wqe *direct_wqe = &wqe->direct_wqe;
 enum completion_format complete_format;
 struct hinic_cmdq_wqe_scmd *wqe_scmd;

 wqe_scmd = &direct_wqe->wqe_scmd;

 switch (cmd_type) {
 case 128:
  complete_format = COMPLETE_SGE;
  cmdq_set_sge_completion(&wqe_scmd->completion, buf_out);
  break;
 case 129:
  complete_format = COMPLETE_DIRECT;
  wqe_scmd->completion.direct_resp = 0;
  break;
 }

 cmdq_prepare_wqe_ctrl(wqe, wrapped, ack_type, mod, cmd, prod_idx,
         complete_format, DATA_DIRECT, BUFDESC_SCMD_LEN);

 cmdq_set_direct_wqe_data(direct_wqe, buf_in, in_size);
}
