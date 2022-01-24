#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u64 ;
struct TYPE_5__ {int /*<<< orphan*/  Opcode; } ;
struct TYPE_6__ {scalar_t__* raw8; TYPE_2__ hdr; } ;
struct ngene_command {int in_len; int out_len; TYPE_3__ cmd; } ;
struct ngene {int cmd_done; int BootFirmware; int PAFWInterfaceBuffer; scalar_t__* ngenetohost; int /*<<< orphan*/  prev_cmd; int /*<<< orphan*/  cmd_wq; int /*<<< orphan*/  cmd_lock; scalar_t__* CmdDoneByte; scalar_t__* FWInterfaceBuffer; int /*<<< orphan*/  icounts; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FWLOAD_FINISH ; 
 int /*<<< orphan*/  CMD_FWLOAD_PREPARE ; 
 int /*<<< orphan*/  FORCE_INT ; 
 int /*<<< orphan*/  HOST_TO_NGENE ; 
 int HZ ; 
 int /*<<< orphan*/  NGENE_COMMAND ; 
 int /*<<< orphan*/  NGENE_COMMAND_HI ; 
 int /*<<< orphan*/  NGENE_EVENT ; 
 int /*<<< orphan*/  NGENE_EVENT_HI ; 
 int /*<<< orphan*/  NGENE_INT_COUNTS ; 
 int /*<<< orphan*/  NGENE_STATUS ; 
 int /*<<< orphan*/  NGENE_STATUS_HI ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ngene*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC9(struct ngene *dev, struct ngene_command *com)
{
	struct device *pdev = &dev->pci_dev->dev;
	int ret;
	u8 *tmpCmdDoneByte;

	dev->cmd_done = 0;

	if (com->cmd.hdr.Opcode == CMD_FWLOAD_PREPARE) {
		dev->BootFirmware = 1;
		dev->icounts = FUNC4(NGENE_INT_COUNTS);
		FUNC5(0, NGENE_COMMAND);
		FUNC5(0, NGENE_COMMAND_HI);
		FUNC5(0, NGENE_STATUS);
		FUNC5(0, NGENE_STATUS_HI);
		FUNC5(0, NGENE_EVENT);
		FUNC5(0, NGENE_EVENT_HI);
	} else if (com->cmd.hdr.Opcode == CMD_FWLOAD_FINISH) {
		u64 fwio = dev->PAFWInterfaceBuffer;

		FUNC5(fwio & 0xffffffff, NGENE_COMMAND);
		FUNC5(fwio >> 32, NGENE_COMMAND_HI);
		FUNC5((fwio + 256) & 0xffffffff, NGENE_STATUS);
		FUNC5((fwio + 256) >> 32, NGENE_STATUS_HI);
		FUNC5((fwio + 512) & 0xffffffff, NGENE_EVENT);
		FUNC5((fwio + 512) >> 32, NGENE_EVENT_HI);
	}

	FUNC2(dev->FWInterfaceBuffer, com->cmd.raw8, com->in_len + 2);

	if (dev->BootFirmware)
		FUNC3(HOST_TO_NGENE, com->cmd.raw8, com->in_len + 2);

	FUNC6(&dev->cmd_lock);
	tmpCmdDoneByte = dev->ngenetohost + com->out_len;
	if (!com->out_len)
		tmpCmdDoneByte++;
	*tmpCmdDoneByte = 0;
	dev->ngenetohost[0] = 0;
	dev->ngenetohost[1] = 0;
	dev->CmdDoneByte = tmpCmdDoneByte;
	FUNC7(&dev->cmd_lock);

	/* Notify 8051. */
	FUNC5(1, FORCE_INT);

	ret = FUNC8(dev->cmd_wq, dev->cmd_done == 1, 2 * HZ);
	if (!ret) {
		/*ngwritel(0, FORCE_NMI);*/

		FUNC0(pdev, "Command timeout cmd=%02x prev=%02x\n",
			com->cmd.hdr.Opcode, dev->prev_cmd);
		FUNC1(dev);
		return -1;
	}
	if (com->cmd.hdr.Opcode == CMD_FWLOAD_FINISH)
		dev->BootFirmware = 0;

	dev->prev_cmd = com->cmd.hdr.Opcode;

	if (!com->out_len)
		return 0;

	FUNC2(com->cmd.raw8, dev->ngenetohost, com->out_len);

	return 0;
}