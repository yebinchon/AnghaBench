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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  heartbeat; } ;
struct bfa_ioc {scalar_t__ hb_count; int /*<<< orphan*/  hb_timer; TYPE_1__ ioc_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_IOC_HB_TOV ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct bfa_ioc *ioc)
{
	u32 hb_count;

	hb_count = FUNC4(ioc->ioc_regs.heartbeat);
	if (ioc->hb_count == hb_count) {
		FUNC1(ioc);
		return;
	} else {
		ioc->hb_count = hb_count;
	}

	FUNC0(ioc);
	FUNC2(&ioc->hb_timer, jiffies +
		FUNC3(BFA_IOC_HB_TOV));
}