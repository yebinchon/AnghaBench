
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pucan_wr_err_cnt {scalar_t__ rx_counter; scalar_t__ tx_counter; void* sel_mask; void* opcode_channel; } ;
struct pucan_options {scalar_t__ unused; void* options; void* opcode_channel; } ;
struct pucan_command {void* opcode_channel; } ;
struct TYPE_2__ {int ctrlmode_supported; int ctrlmode; } ;
struct peak_usb_device {TYPE_1__ can; int ctrl_idx; } ;


 int CAN_CTRLMODE_FD_NON_ISO ;
 int CAN_CTRLMODE_LISTENONLY ;
 int PUCAN_CMD_CLR_DIS_OPTION ;
 int PUCAN_CMD_LISTEN_ONLY_MODE ;
 int PUCAN_CMD_NORMAL_MODE ;
 int PUCAN_CMD_SET_EN_OPTION ;
 int PUCAN_CMD_WR_ERR_CNT ;
 int PUCAN_OPTION_CANDFDISO ;
 int PUCAN_WRERRCNT_RE ;
 int PUCAN_WRERRCNT_TE ;
 void* cpu_to_le16 (int) ;
 void* pucan_cmd_opcode_channel (int ,int ) ;

__attribute__((used)) static int pcan_usb_fd_build_restart_cmd(struct peak_usb_device *dev, u8 *buf)
{
 struct pucan_wr_err_cnt *prc;
 struct pucan_command *cmd;
 u8 *pc = buf;


 prc = (struct pucan_wr_err_cnt *)pc;
 prc->opcode_channel = pucan_cmd_opcode_channel(dev->ctrl_idx,
             PUCAN_CMD_WR_ERR_CNT);


 prc->sel_mask = cpu_to_le16(PUCAN_WRERRCNT_TE|PUCAN_WRERRCNT_RE);


 prc->tx_counter = 0;
 prc->rx_counter = 0;


 pc += sizeof(struct pucan_wr_err_cnt);


 if (dev->can.ctrlmode_supported & CAN_CTRLMODE_FD_NON_ISO) {
  struct pucan_options *puo = (struct pucan_options *)pc;

  puo->opcode_channel =
   (dev->can.ctrlmode & CAN_CTRLMODE_FD_NON_ISO) ?
   pucan_cmd_opcode_channel(dev->ctrl_idx,
       PUCAN_CMD_CLR_DIS_OPTION) :
   pucan_cmd_opcode_channel(dev->ctrl_idx,
       PUCAN_CMD_SET_EN_OPTION);

  puo->options = cpu_to_le16(PUCAN_OPTION_CANDFDISO);




  puo->unused = 0;


  pc += sizeof(struct pucan_options);
 }


 cmd = (struct pucan_command *)pc;
 cmd->opcode_channel = pucan_cmd_opcode_channel(dev->ctrl_idx,
    (dev->can.ctrlmode & CAN_CTRLMODE_LISTENONLY) ?
      PUCAN_CMD_LISTEN_ONLY_MODE :
      PUCAN_CMD_NORMAL_MODE);
 pc += sizeof(struct pucan_command);

 return pc - buf;
}
