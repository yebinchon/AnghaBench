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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct hinic_hwif {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  COALESC_TIMER ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LLI_CREDIT ; 
 int /*<<< orphan*/  LLI_TIMER ; 
 int /*<<< orphan*/  PENDING_LIMIT ; 
 int /*<<< orphan*/  RESEND_TIMER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_hwif*,int,int) ; 

int FUNC4(struct hinic_hwif *hwif, u16 msix_index,
			u8 pending_limit, u8 coalesc_timer,
			u8 lli_timer, u8 lli_credit_limit,
			u8 resend_timer)
{
	u32 msix_ctrl, addr;

	if (!FUNC2(&hwif->attr, msix_index))
		return -EINVAL;

	msix_ctrl = FUNC1(pending_limit, PENDING_LIMIT)   |
		    FUNC1(coalesc_timer, COALESC_TIMER)   |
		    FUNC1(lli_timer, LLI_TIMER)           |
		    FUNC1(lli_credit_limit, LLI_CREDIT)   |
		    FUNC1(resend_timer, RESEND_TIMER);

	addr = FUNC0(msix_index);

	FUNC3(hwif, addr, msix_ctrl);
	return 0;
}