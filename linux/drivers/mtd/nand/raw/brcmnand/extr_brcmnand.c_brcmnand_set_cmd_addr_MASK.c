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
typedef  int u64 ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct brcmnand_host {int cs; struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMNAND_CMD_ADDRESS ; 
 int /*<<< orphan*/  BRCMNAND_CMD_EXT_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct brcmnand_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmnand_controller*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 struct nand_chip* FUNC3 (struct mtd_info*) ; 
 struct brcmnand_host* FUNC4 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC5(struct mtd_info *mtd, u64 addr)
{
	struct nand_chip *chip =  FUNC3(mtd);
	struct brcmnand_host *host = FUNC4(chip);
	struct brcmnand_controller *ctrl = host->ctrl;

	FUNC1(ctrl, BRCMNAND_CMD_EXT_ADDRESS,
			   (host->cs << 16) | ((addr >> 32) & 0xffff));
	(void)FUNC0(ctrl, BRCMNAND_CMD_EXT_ADDRESS);
	FUNC1(ctrl, BRCMNAND_CMD_ADDRESS,
			   FUNC2(addr));
	(void)FUNC0(ctrl, BRCMNAND_CMD_ADDRESS);
}