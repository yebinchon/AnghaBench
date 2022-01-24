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
struct et131x_adapter {TYPE_2__* regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmc_ctrl; } ;
struct TYPE_4__ {TYPE_1__ mmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ET_MMC_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct et131x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct et131x_adapter *adapter)
{
	FUNC7(adapter);
	FUNC0(adapter);

	/* Configure the MMC registers */
	/* All we need to do is initialize the Memory Control Register */
	FUNC9(ET_MMC_ENABLE, &adapter->regs->mmc.mmc_ctrl);

	FUNC2(adapter);
	FUNC3(adapter);

	FUNC5(adapter);
	FUNC6(adapter);

	FUNC1(adapter);

	FUNC4(adapter, 0);
	FUNC8(adapter);
}