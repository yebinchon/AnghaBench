#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ath6kl_usb_ctrl_diag_resp_read {int /*<<< orphan*/  value; } ;
struct ath6kl_usb_ctrl_diag_cmd_write {int dummy; } ;
struct ath6kl_usb_ctrl_diag_cmd_read {int /*<<< orphan*/  address; int /*<<< orphan*/  cmd; } ;
struct ath6kl_usb {scalar_t__ diag_resp_buffer; scalar_t__ diag_cmd_buffer; } ;
struct ath6kl {struct ath6kl_usb* hif_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_USB_CONTROL_REQ_DIAG_CMD ; 
 int /*<<< orphan*/  ATH6KL_USB_CONTROL_REQ_DIAG_RESP ; 
 int /*<<< orphan*/  ATH6KL_USB_CTRL_DIAG_CC_READ ; 
 int FUNC0 (struct ath6kl_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath6kl_usb_ctrl_diag_cmd_read*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ath6kl *ar, u32 address, u32 *data)
{
	struct ath6kl_usb *ar_usb = ar->hif_priv;
	struct ath6kl_usb_ctrl_diag_resp_read *resp;
	struct ath6kl_usb_ctrl_diag_cmd_read *cmd;
	u32 resp_len;
	int ret;

	cmd = (struct ath6kl_usb_ctrl_diag_cmd_read *) ar_usb->diag_cmd_buffer;

	FUNC4(cmd, 0, sizeof(*cmd));
	cmd->cmd = ATH6KL_USB_CTRL_DIAG_CC_READ;
	cmd->address = FUNC2(address);
	resp_len = sizeof(*resp);

	ret = FUNC0(ar_usb,
				ATH6KL_USB_CONTROL_REQ_DIAG_CMD,
				(u8 *) cmd,
				sizeof(struct ath6kl_usb_ctrl_diag_cmd_write),
				ATH6KL_USB_CONTROL_REQ_DIAG_RESP,
				ar_usb->diag_resp_buffer, &resp_len);

	if (ret) {
		FUNC1("diag read32 failed: %d\n", ret);
		return ret;
	}

	resp = (struct ath6kl_usb_ctrl_diag_resp_read *)
		ar_usb->diag_resp_buffer;

	*data = FUNC3(resp->value);

	return ret;
}