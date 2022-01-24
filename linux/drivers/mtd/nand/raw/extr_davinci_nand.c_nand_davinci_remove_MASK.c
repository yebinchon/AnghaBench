#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct TYPE_4__ {TYPE_1__ ecc; } ;
struct davinci_nand_info {TYPE_2__ chip; } ;

/* Variables and functions */
 scalar_t__ NAND_ECC_HW_SYNDROME ; 
 int /*<<< orphan*/  davinci_nand_lock ; 
 int ecc4_busy ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct davinci_nand_info* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct davinci_nand_info *info = FUNC1(pdev);

	FUNC2(&davinci_nand_lock);
	if (info->chip.ecc.mode == NAND_ECC_HW_SYNDROME)
		ecc4_busy = false;
	FUNC3(&davinci_nand_lock);

	FUNC0(&info->chip);

	return 0;
}