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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct hinic_hwif {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESEND_TIMER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_hwif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct hinic_hwif *hwif, u16 msix_index)
{
	u32 msix_ctrl, addr;

	if (!FUNC2(&hwif->attr, msix_index))
		return -EINVAL;

	msix_ctrl = FUNC1(1, RESEND_TIMER);
	addr = FUNC0(msix_index);

	FUNC3(hwif, addr, msix_ctrl);
	return 0;
}