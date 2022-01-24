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
struct nand_chip {int dummy; } ;
struct mtd_info {scalar_t__ oops_panic_write; } ;
struct brcmnand_host {struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_CTRL_RDY ; 
 int /*<<< orphan*/  NAND_POLL_STATUS_TIMEOUT_MS ; 
 int FUNC0 (struct brcmnand_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmnand_controller*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 struct brcmnand_host* FUNC3 (struct nand_chip*) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC6(struct nand_chip *chip)
{
	struct brcmnand_host *host = FUNC3(chip);
	struct brcmnand_controller *ctrl = host->ctrl;
	struct mtd_info *mtd = FUNC4(chip);
	bool err = false;
	int sts;

	if (mtd->oops_panic_write) {
		/* switch to interrupt polling and PIO mode */
		FUNC1(ctrl);
		sts = FUNC0(ctrl, NAND_CTRL_RDY,
					       NAND_CTRL_RDY, 0);
		err = (sts < 0) ? true : false;
	} else {
		unsigned long timeo = FUNC2(
						NAND_POLL_STATUS_TIMEOUT_MS);
		/* wait for completion interrupt */
		sts = FUNC5(&ctrl->done, timeo);
		err = (sts <= 0) ? true : false;
	}

	return err;
}