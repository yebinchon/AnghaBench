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
struct platform_device {int dummy; } ;
struct mxic_nand_ctlr {int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mxic_nand_ctlr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mxic_nand_ctlr* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct mxic_nand_ctlr *nfc = FUNC2(pdev);

	FUNC1(&nfc->chip);
	FUNC0(nfc);
	return 0;
}