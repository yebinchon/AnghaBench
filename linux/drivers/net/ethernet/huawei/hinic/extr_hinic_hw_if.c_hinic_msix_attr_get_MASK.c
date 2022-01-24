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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct hinic_hwif {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  COALESC_TIMER ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LLI_CREDIT ; 
 int /*<<< orphan*/  LLI_TIMER ; 
 int /*<<< orphan*/  PENDING_LIMIT ; 
 int /*<<< orphan*/  RESEND_TIMER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_hwif*,int /*<<< orphan*/ ) ; 

int FUNC4(struct hinic_hwif *hwif, u16 msix_index,
			u8 *pending_limit, u8 *coalesc_timer,
			u8 *lli_timer, u8 *lli_credit_limit,
			u8 *resend_timer)
{
	u32 addr, val;

	if (!FUNC2(&hwif->attr, msix_index))
		return -EINVAL;

	addr = FUNC0(msix_index);
	val  = FUNC3(hwif, addr);

	*pending_limit    = FUNC1(val, PENDING_LIMIT);
	*coalesc_timer    = FUNC1(val, COALESC_TIMER);
	*lli_timer        = FUNC1(val, LLI_TIMER);
	*lli_credit_limit = FUNC1(val, LLI_CREDIT);
	*resend_timer     = FUNC1(val, RESEND_TIMER);
	return 0;
}