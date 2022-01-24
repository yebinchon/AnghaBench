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
struct peak_usb_device {int /*<<< orphan*/  ctrl_idx; } ;
struct pcan_ufd_clock {int /*<<< orphan*/  mode; int /*<<< orphan*/  opcode_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAN_UFD_CMD_CLK_SET ; 
 struct pcan_ufd_clock* FUNC0 (struct peak_usb_device*) ; 
 int FUNC1 (struct peak_usb_device*,struct pcan_ufd_clock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct peak_usb_device *dev,
					u8 clk_mode)
{
	struct pcan_ufd_clock *cmd = FUNC0(dev);

	cmd->opcode_channel = FUNC2(dev->ctrl_idx,
						       PCAN_UFD_CMD_CLK_SET);
	cmd->mode = clk_mode;

	/* send the command */
	return FUNC1(dev, ++cmd);
}