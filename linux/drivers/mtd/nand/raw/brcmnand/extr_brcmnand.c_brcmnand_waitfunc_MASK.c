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
typedef  int u32 ;
struct nand_chip {int dummy; } ;
struct brcmnand_host {struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {scalar_t__ cmd_pending; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMNAND_CMD_START ; 
 int /*<<< orphan*/  BRCMNAND_INTFC_STATUS ; 
 int INTFC_FLASH_STATUS ; 
 int FUNC0 (struct brcmnand_controller*) ; 
 int FUNC1 (struct brcmnand_controller*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct brcmnand_host* FUNC5 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *chip)
{
	struct brcmnand_host *host = FUNC5(chip);
	struct brcmnand_controller *ctrl = host->ctrl;
	bool err = false;

	FUNC3(ctrl->dev, "wait on native cmd %d\n", ctrl->cmd_pending);
	if (ctrl->cmd_pending)
		err = FUNC2(chip);

	if (err) {
		u32 cmd = FUNC1(ctrl, BRCMNAND_CMD_START)
					>> FUNC0(ctrl);

		FUNC4(ctrl->dev,
			"timeout waiting for command %#02x\n", cmd);
		FUNC4(ctrl->dev, "intfc status %08x\n",
			FUNC1(ctrl, BRCMNAND_INTFC_STATUS));
	}
	ctrl->cmd_pending = 0;
	return FUNC1(ctrl, BRCMNAND_INTFC_STATUS) &
				 INTFC_FLASH_STATUS;
}