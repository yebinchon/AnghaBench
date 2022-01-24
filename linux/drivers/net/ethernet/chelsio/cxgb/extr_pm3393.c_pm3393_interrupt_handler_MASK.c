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
typedef  int /*<<< orphan*/  u32 ;
struct cmac {TYPE_2__* adapter; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC3 (struct cmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct cmac *cmac)
{
	u32 master_intr_status;

	/* Read the master interrupt status register. */
	FUNC3(cmac, SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS,
	       &master_intr_status);
	if (FUNC1(cmac->adapter))
		FUNC0(&cmac->adapter->pdev->dev, "PM3393 intr cause 0x%x\n",
			master_intr_status);

	/* TBD XXX Lets just clear everything for now */
	FUNC2(cmac);

	return 0;
}