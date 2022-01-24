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
struct mxic_nand_ctlr {int /*<<< orphan*/  dev; int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  IRQ_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mxic_nand_ctlr* FUNC2 (struct nand_chip*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int  FUNC4(struct nand_chip *chip)
{
	struct mxic_nand_ctlr *nfc = FUNC2(chip);
	int ret;

	ret = FUNC3(&nfc->complete,
					  FUNC1(IRQ_TIMEOUT));
	if (!ret) {
		FUNC0(nfc->dev, "nand device timeout\n");
		return -ETIMEDOUT;
	}

	return 0;
}