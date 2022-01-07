
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;
 int S5P_FIMV_RISC2HOST_CMD ;
 int S5P_FIMV_RISC2HOST_CMD_MASK ;
 int S5P_MFC_R2H_CMD_CLOSE_INSTANCE_RET ;
 int S5P_MFC_R2H_CMD_COMPLETE_SEQ_RET ;
 int S5P_MFC_R2H_CMD_EMPTY ;
 int S5P_MFC_R2H_CMD_ERR_RET ;
 int S5P_MFC_R2H_CMD_FRAME_DONE_RET ;
 int S5P_MFC_R2H_CMD_FW_STATUS_RET ;
 int S5P_MFC_R2H_CMD_INIT_BUFFERS_RET ;
 int S5P_MFC_R2H_CMD_OPEN_INSTANCE_RET ;
 int S5P_MFC_R2H_CMD_SEQ_DONE_RET ;
 int S5P_MFC_R2H_CMD_SLEEP_RET ;
 int S5P_MFC_R2H_CMD_SLICE_DONE_RET ;
 int S5P_MFC_R2H_CMD_SYS_INIT_RET ;
 int S5P_MFC_R2H_CMD_WAKEUP_RET ;
 int mfc_read (struct s5p_mfc_dev*,int ) ;

__attribute__((used)) static int s5p_mfc_get_int_reason_v5(struct s5p_mfc_dev *dev)
{
 int reason;
 reason = mfc_read(dev, S5P_FIMV_RISC2HOST_CMD) &
  S5P_FIMV_RISC2HOST_CMD_MASK;
 switch (reason) {
 case 133:
  reason = S5P_MFC_R2H_CMD_OPEN_INSTANCE_RET;
  break;
 case 139:
  reason = S5P_MFC_R2H_CMD_CLOSE_INSTANCE_RET;
  break;
 case 132:
  reason = S5P_MFC_R2H_CMD_SEQ_DONE_RET;
  break;
 case 136:
  reason = S5P_MFC_R2H_CMD_FRAME_DONE_RET;
  break;
 case 130:
  reason = S5P_MFC_R2H_CMD_SLICE_DONE_RET;
  break;
 case 129:
  reason = S5P_MFC_R2H_CMD_SYS_INIT_RET;
  break;
 case 135:
  reason = S5P_MFC_R2H_CMD_FW_STATUS_RET;
  break;
 case 131:
  reason = S5P_MFC_R2H_CMD_SLEEP_RET;
  break;
 case 128:
  reason = S5P_MFC_R2H_CMD_WAKEUP_RET;
  break;
 case 134:
  reason = S5P_MFC_R2H_CMD_INIT_BUFFERS_RET;
  break;
 case 138:
  reason = S5P_MFC_R2H_CMD_COMPLETE_SEQ_RET;
  break;
 case 137:
  reason = S5P_MFC_R2H_CMD_ERR_RET;
  break;
 default:
  reason = S5P_MFC_R2H_CMD_EMPTY;
 }
 return reason;
}
