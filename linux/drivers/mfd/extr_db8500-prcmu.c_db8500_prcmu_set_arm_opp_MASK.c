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
typedef  scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ header; scalar_t__ arm_opp; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__ ack; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 scalar_t__ APE_NO_CHANGE ; 
 scalar_t__ ARM_EXTCLK ; 
 scalar_t__ ARM_NO_CHANGE ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ MB1H_ARM_APE_OPP ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_SET ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_VAL ; 
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB1 ; 
 scalar_t__ PRCM_REQ_MB1_APE_OPP ; 
 scalar_t__ PRCM_REQ_MB1_ARM_OPP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ mb1_transfer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ tcdm_base ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

int FUNC8(u8 opp)
{
	int r;

	if (opp < ARM_NO_CHANGE || opp > ARM_EXTCLK)
		return -EINVAL;

	r = 0;

	FUNC2(&mb1_transfer.lock);

	while (FUNC4(PRCM_MBOX_CPU_VAL) & FUNC0(1))
		FUNC1();

	FUNC6(MB1H_ARM_APE_OPP, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB1));
	FUNC6(opp, (tcdm_base + PRCM_REQ_MB1_ARM_OPP));
	FUNC6(APE_NO_CHANGE, (tcdm_base + PRCM_REQ_MB1_APE_OPP));

	FUNC7(FUNC0(1), PRCM_MBOX_CPU_SET);
	FUNC5(&mb1_transfer.work);

	if ((mb1_transfer.ack.header != MB1H_ARM_APE_OPP) ||
		(mb1_transfer.ack.arm_opp != opp))
		r = -EIO;

	FUNC3(&mb1_transfer.lock);

	return r;
}