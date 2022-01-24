#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int HOTMON_CONFIG_HIGH ; 
 int HOTMON_CONFIG_LOW ; 
 int MB4H_HOTMON ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_SET ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_VAL ; 
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB4 ; 
 scalar_t__ PRCM_REQ_MB4_HOTMON_CONFIG ; 
 scalar_t__ PRCM_REQ_MB4_HOTMON_HIGH ; 
 scalar_t__ PRCM_REQ_MB4_HOTMON_LOW ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ mb4_transfer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ tcdm_base ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

int FUNC8(u8 low, u8 high)
{
	FUNC2(&mb4_transfer.lock);

	while (FUNC4(PRCM_MBOX_CPU_VAL) & FUNC0(4))
		FUNC1();

	FUNC6(low, (tcdm_base + PRCM_REQ_MB4_HOTMON_LOW));
	FUNC6(high, (tcdm_base + PRCM_REQ_MB4_HOTMON_HIGH));
	FUNC6((HOTMON_CONFIG_LOW | HOTMON_CONFIG_HIGH),
		(tcdm_base + PRCM_REQ_MB4_HOTMON_CONFIG));
	FUNC6(MB4H_HOTMON, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB4));

	FUNC7(FUNC0(4), PRCM_MBOX_CPU_SET);
	FUNC5(&mb4_transfer.work);

	FUNC3(&mb4_transfer.lock);

	return 0;
}