
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct hinic_ctrl {int ctrl_info; } ;
struct TYPE_7__ {scalar_t__ status_info; } ;
struct hinic_cmdq_wqe_scmd {struct hinic_ctrl ctrl; TYPE_3__ status; } ;
struct TYPE_5__ {scalar_t__ status_info; } ;
struct hinic_cmdq_wqe_lcmd {struct hinic_ctrl ctrl; TYPE_1__ status; } ;
struct TYPE_6__ {struct hinic_cmdq_wqe_scmd wqe_scmd; } ;
struct hinic_cmdq_wqe {TYPE_2__ direct_wqe; struct hinic_cmdq_wqe_lcmd wqe_lcmd; } ;
typedef enum hinic_mod_type { ____Placeholder_hinic_mod_type } hinic_mod_type ;
typedef enum hinic_cmd_ack_type { ____Placeholder_hinic_cmd_ack_type } hinic_cmd_ack_type ;
typedef enum data_format { ____Placeholder_data_format } data_format ;
typedef enum ctrl_sect_len { ____Placeholder_ctrl_sect_len } ctrl_sect_len ;
typedef enum completion_format { ____Placeholder_completion_format } completion_format ;
typedef enum bufdesc_len { ____Placeholder_bufdesc_len } bufdesc_len ;
struct TYPE_8__ {int header_info; int saved_data; } ;


 int ACK_TYPE ;
 int ARM ;
 int BUFDESC_LEN ;
 int CEQ_SET ;
 int CMD ;
 scalar_t__ CMDQ_SET_ARM_CMD ;
 TYPE_4__* CMDQ_WQE_HEADER (struct hinic_cmdq_wqe*) ;
 int COMPLETE_FMT ;
 int COMPLETE_LEN ;
 int COMPLETE_REQ ;
 int COMPLETE_SECT_LEN ;
 int CTRL_DIRECT_SECT_LEN ;
 int CTRL_LEN ;
 int CTRL_SECT_LEN ;
 int DATA_FMT ;
 int DATA_SGE ;
 int HINIC_CMDQ_CTRL_SET (int,int ) ;
 int HINIC_CMDQ_WQE_HEADER_SET (int,int ) ;
 int HINIC_MOD_COMM ;
 int HINIC_SAVED_DATA_CLEAR (int ,int ) ;
 int HINIC_SAVED_DATA_SET (int,int ) ;
 int MOD ;
 int PI ;
 int TOGGLED_WRAPPED ;

__attribute__((used)) static void cmdq_prepare_wqe_ctrl(struct hinic_cmdq_wqe *wqe, int wrapped,
      enum hinic_cmd_ack_type ack_type,
      enum hinic_mod_type mod, u8 cmd, u16 prod_idx,
      enum completion_format complete_format,
      enum data_format data_format,
      enum bufdesc_len buf_len)
{
 struct hinic_cmdq_wqe_lcmd *wqe_lcmd;
 struct hinic_cmdq_wqe_scmd *wqe_scmd;
 enum ctrl_sect_len ctrl_len;
 struct hinic_ctrl *ctrl;
 u32 saved_data;

 if (data_format == DATA_SGE) {
  wqe_lcmd = &wqe->wqe_lcmd;

  wqe_lcmd->status.status_info = 0;
  ctrl = &wqe_lcmd->ctrl;
  ctrl_len = CTRL_SECT_LEN;
 } else {
  wqe_scmd = &wqe->direct_wqe.wqe_scmd;

  wqe_scmd->status.status_info = 0;
  ctrl = &wqe_scmd->ctrl;
  ctrl_len = CTRL_DIRECT_SECT_LEN;
 }

 ctrl->ctrl_info = HINIC_CMDQ_CTRL_SET(prod_idx, PI) |
     HINIC_CMDQ_CTRL_SET(cmd, CMD) |
     HINIC_CMDQ_CTRL_SET(mod, MOD) |
     HINIC_CMDQ_CTRL_SET(ack_type, ACK_TYPE);

 CMDQ_WQE_HEADER(wqe)->header_info =
  HINIC_CMDQ_WQE_HEADER_SET(buf_len, BUFDESC_LEN) |
  HINIC_CMDQ_WQE_HEADER_SET(complete_format, COMPLETE_FMT) |
  HINIC_CMDQ_WQE_HEADER_SET(data_format, DATA_FMT) |
  HINIC_CMDQ_WQE_HEADER_SET(CEQ_SET, COMPLETE_REQ) |
  HINIC_CMDQ_WQE_HEADER_SET(COMPLETE_LEN, COMPLETE_SECT_LEN) |
  HINIC_CMDQ_WQE_HEADER_SET(ctrl_len, CTRL_LEN) |
  HINIC_CMDQ_WQE_HEADER_SET(wrapped, TOGGLED_WRAPPED);

 saved_data = CMDQ_WQE_HEADER(wqe)->saved_data;
 saved_data = HINIC_SAVED_DATA_CLEAR(saved_data, ARM);

 if ((cmd == CMDQ_SET_ARM_CMD) && (mod == HINIC_MOD_COMM))
  CMDQ_WQE_HEADER(wqe)->saved_data |=
      HINIC_SAVED_DATA_SET(1, ARM);
 else
  CMDQ_WQE_HEADER(wqe)->saved_data = saved_data;
}
