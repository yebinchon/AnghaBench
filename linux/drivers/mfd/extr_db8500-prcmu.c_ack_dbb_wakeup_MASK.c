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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB0H_READ_WAKEUP_ACK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_SET ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_VAL ; 
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB0 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ mb0_transfer ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ tcdm_base ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
	unsigned long flags;

	FUNC3(&mb0_transfer.lock, flags);

	while (FUNC2(PRCM_MBOX_CPU_VAL) & FUNC0(0))
		FUNC1();

	FUNC5(MB0H_READ_WAKEUP_ACK, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB0));
	FUNC6(FUNC0(0), PRCM_MBOX_CPU_SET);

	FUNC4(&mb0_transfer.lock, flags);
}