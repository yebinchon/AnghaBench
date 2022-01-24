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
struct ath10k_usb_ctrl_diag_resp_read {int dummy; } ;
struct ath10k_usb_ctrl_diag_cmd_read {int /*<<< orphan*/  address; int /*<<< orphan*/  cmd; } ;
struct ath10k_usb {int /*<<< orphan*/  diag_resp_buffer; scalar_t__ diag_cmd_buffer; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_USB_CONTROL_REQ_DIAG_CMD ; 
 int /*<<< orphan*/  ATH10K_USB_CONTROL_REQ_DIAG_RESP ; 
 int /*<<< orphan*/  ATH10K_USB_CTRL_DIAG_CC_READ ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct ath10k_usb* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k_usb_ctrl_diag_cmd_read*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar, u32 address, void *buf,
				    size_t buf_len)
{
	struct ath10k_usb *ar_usb = FUNC1(ar);
	struct ath10k_usb_ctrl_diag_cmd_read *cmd;
	u32 resp_len;
	int ret;

	if (buf_len < sizeof(struct ath10k_usb_ctrl_diag_resp_read))
		return -EINVAL;

	cmd = (struct ath10k_usb_ctrl_diag_cmd_read *)ar_usb->diag_cmd_buffer;
	FUNC4(cmd, 0, sizeof(*cmd));
	cmd->cmd = ATH10K_USB_CTRL_DIAG_CC_READ;
	cmd->address = FUNC2(address);
	resp_len = sizeof(struct ath10k_usb_ctrl_diag_resp_read);

	ret = FUNC0(ar,
					   ATH10K_USB_CONTROL_REQ_DIAG_CMD,
					   (u8 *)cmd,
					   sizeof(*cmd),
					   ATH10K_USB_CONTROL_REQ_DIAG_RESP,
					   ar_usb->diag_resp_buffer, &resp_len);
	if (ret)
		return ret;

	if (resp_len != sizeof(struct ath10k_usb_ctrl_diag_resp_read))
		return -EMSGSIZE;

	FUNC3(buf, ar_usb->diag_resp_buffer,
	       sizeof(struct ath10k_usb_ctrl_diag_resp_read));

	return 0;
}