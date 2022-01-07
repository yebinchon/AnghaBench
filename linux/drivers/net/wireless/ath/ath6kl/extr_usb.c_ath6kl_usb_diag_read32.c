
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath6kl_usb_ctrl_diag_resp_read {int value; } ;
struct ath6kl_usb_ctrl_diag_cmd_write {int dummy; } ;
struct ath6kl_usb_ctrl_diag_cmd_read {int address; int cmd; } ;
struct ath6kl_usb {scalar_t__ diag_resp_buffer; scalar_t__ diag_cmd_buffer; } ;
struct ath6kl {struct ath6kl_usb* hif_priv; } ;


 int ATH6KL_USB_CONTROL_REQ_DIAG_CMD ;
 int ATH6KL_USB_CONTROL_REQ_DIAG_RESP ;
 int ATH6KL_USB_CTRL_DIAG_CC_READ ;
 int ath6kl_usb_ctrl_msg_exchange (struct ath6kl_usb*,int ,int *,int,int ,scalar_t__,int*) ;
 int ath6kl_warn (char*,int) ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int memset (struct ath6kl_usb_ctrl_diag_cmd_read*,int ,int) ;

__attribute__((used)) static int ath6kl_usb_diag_read32(struct ath6kl *ar, u32 address, u32 *data)
{
 struct ath6kl_usb *ar_usb = ar->hif_priv;
 struct ath6kl_usb_ctrl_diag_resp_read *resp;
 struct ath6kl_usb_ctrl_diag_cmd_read *cmd;
 u32 resp_len;
 int ret;

 cmd = (struct ath6kl_usb_ctrl_diag_cmd_read *) ar_usb->diag_cmd_buffer;

 memset(cmd, 0, sizeof(*cmd));
 cmd->cmd = ATH6KL_USB_CTRL_DIAG_CC_READ;
 cmd->address = cpu_to_le32(address);
 resp_len = sizeof(*resp);

 ret = ath6kl_usb_ctrl_msg_exchange(ar_usb,
    ATH6KL_USB_CONTROL_REQ_DIAG_CMD,
    (u8 *) cmd,
    sizeof(struct ath6kl_usb_ctrl_diag_cmd_write),
    ATH6KL_USB_CONTROL_REQ_DIAG_RESP,
    ar_usb->diag_resp_buffer, &resp_len);

 if (ret) {
  ath6kl_warn("diag read32 failed: %d\n", ret);
  return ret;
 }

 resp = (struct ath6kl_usb_ctrl_diag_resp_read *)
  ar_usb->diag_resp_buffer;

 *data = le32_to_cpu(resp->value);

 return ret;
}
