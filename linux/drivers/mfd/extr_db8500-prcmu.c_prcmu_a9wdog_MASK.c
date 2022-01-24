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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_SET ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_VAL ; 
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB4 ; 
 scalar_t__ PRCM_REQ_MB4_A9WDOG_0 ; 
 scalar_t__ PRCM_REQ_MB4_A9WDOG_1 ; 
 scalar_t__ PRCM_REQ_MB4_A9WDOG_2 ; 
 scalar_t__ PRCM_REQ_MB4_A9WDOG_3 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ mb4_transfer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ tcdm_base ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(u8 cmd, u8 d0, u8 d1, u8 d2, u8 d3)
{

	FUNC2(&mb4_transfer.lock);

	while (FUNC4(PRCM_MBOX_CPU_VAL) & FUNC0(4))
		FUNC1();

	FUNC6(d0, (tcdm_base + PRCM_REQ_MB4_A9WDOG_0));
	FUNC6(d1, (tcdm_base + PRCM_REQ_MB4_A9WDOG_1));
	FUNC6(d2, (tcdm_base + PRCM_REQ_MB4_A9WDOG_2));
	FUNC6(d3, (tcdm_base + PRCM_REQ_MB4_A9WDOG_3));

	FUNC6(cmd, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB4));

	FUNC7(FUNC0(4), PRCM_MBOX_CPU_SET);
	FUNC5(&mb4_transfer.work);

	FUNC3(&mb4_transfer.lock);

	return 0;

}