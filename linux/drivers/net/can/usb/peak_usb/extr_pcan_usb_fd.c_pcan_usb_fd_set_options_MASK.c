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
typedef  int /*<<< orphan*/  u16 ;
struct peak_usb_device {int /*<<< orphan*/  ctrl_idx; } ;
struct pcan_ufd_options {void* usb_mask; void* ucan_mask; int /*<<< orphan*/  opcode_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  PUCAN_CMD_CLR_DIS_OPTION ; 
 int /*<<< orphan*/  PUCAN_CMD_SET_EN_OPTION ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pcan_ufd_options* FUNC1 (struct peak_usb_device*) ; 
 int FUNC2 (struct peak_usb_device*,struct pcan_ufd_options*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct peak_usb_device *dev,
				   bool onoff, u16 ucan_mask, u16 usb_mask)
{
	struct pcan_ufd_options *cmd = FUNC1(dev);

	cmd->opcode_channel = FUNC3(dev->ctrl_idx,
					(onoff) ? PUCAN_CMD_SET_EN_OPTION :
						  PUCAN_CMD_CLR_DIS_OPTION);

	cmd->ucan_mask = FUNC0(ucan_mask);
	cmd->usb_mask = FUNC0(usb_mask);

	/* send the command */
	return FUNC2(dev, ++cmd);
}