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
typedef  int /*<<< orphan*/  u64 ;
struct brcmnand_host {struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int cmd_pending; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMNAND_CMD_ADDRESS ; 
 int /*<<< orphan*/  BRCMNAND_CMD_START ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NAND_CTRL_RDY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct brcmnand_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct brcmnand_controller*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmnand_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmnand_controller*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct brcmnand_host *host, int cmd)
{
	struct brcmnand_controller *ctrl = host->ctrl;
	int ret;
	u64 cmd_addr;

	cmd_addr = FUNC4(ctrl, BRCMNAND_CMD_ADDRESS);

	FUNC6(ctrl->dev, "send native cmd %d addr 0x%llx\n", cmd, cmd_addr);

	FUNC0(ctrl->cmd_pending != 0);
	ctrl->cmd_pending = cmd;

	ret = FUNC2(ctrl, NAND_CTRL_RDY, NAND_CTRL_RDY, 0);
	FUNC1(ret);

	FUNC7(); /* flush previous writes */
	FUNC5(ctrl, BRCMNAND_CMD_START,
			   cmd << FUNC3(ctrl));
}