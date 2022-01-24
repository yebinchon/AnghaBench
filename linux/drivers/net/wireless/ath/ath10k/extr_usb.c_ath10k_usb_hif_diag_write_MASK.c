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
typedef  int /*<<< orphan*/  u32 ;
struct ath10k_usb_ctrl_diag_cmd_write {int /*<<< orphan*/  value; void* address; void* cmd; } ;
struct ath10k_usb {scalar_t__ diag_cmd_buffer; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_USB_CONTROL_REQ_DIAG_CMD ; 
 int /*<<< orphan*/  ATH10K_USB_CTRL_DIAG_CC_WRITE ; 
 int EINVAL ; 
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ath10k_usb* FUNC1 (struct ath10k*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k_usb_ctrl_diag_cmd_write*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar, u32 address,
				     const void *data, int nbytes)
{
	struct ath10k_usb *ar_usb = FUNC1(ar);
	struct ath10k_usb_ctrl_diag_cmd_write *cmd;
	int ret;

	if (nbytes != sizeof(cmd->value))
		return -EINVAL;

	cmd = (struct ath10k_usb_ctrl_diag_cmd_write *)ar_usb->diag_cmd_buffer;
	FUNC4(cmd, 0, sizeof(*cmd));
	cmd->cmd = FUNC2(ATH10K_USB_CTRL_DIAG_CC_WRITE);
	cmd->address = FUNC2(address);
	FUNC3(&cmd->value, data, nbytes);

	ret = FUNC0(ar,
					   ATH10K_USB_CONTROL_REQ_DIAG_CMD,
					   (u8 *)cmd,
					   sizeof(*cmd),
					   0, NULL, NULL);
	if (ret)
		return ret;

	return 0;
}