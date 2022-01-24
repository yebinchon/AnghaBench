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
typedef  int u32 ;
struct fm10k_hw {int dummy; } ;
struct fm10k_intfc {int /*<<< orphan*/  rx_overrun_vf; int /*<<< orphan*/  rx_overrun_pf; struct fm10k_hw hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FM10K_EICR_MAXHOLDTIME ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FM10K_MAX_QUEUES_PF ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FM10K_RXDCTL_WRITE_BACK_MIN_DELAY ; 
 int FUNC3 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_hw*,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static void FUNC5(struct fm10k_intfc *interface, u32 eicr)
{
	struct fm10k_hw *hw = &interface->hw;
	const u32 rxdctl = FM10K_RXDCTL_WRITE_BACK_MIN_DELAY;
	u32 maxholdq;
	int q;

	if (!(eicr & FM10K_EICR_MAXHOLDTIME))
		return;

	maxholdq = FUNC3(hw, FUNC1(7));
	if (maxholdq)
		FUNC4(hw, FUNC1(7), maxholdq);
	for (q = 255;;) {
		if (maxholdq & FUNC0(31)) {
			if (q < FM10K_MAX_QUEUES_PF) {
				interface->rx_overrun_pf++;
				FUNC4(hw, FUNC2(q), rxdctl);
			} else {
				interface->rx_overrun_vf++;
			}
		}

		maxholdq *= 2;
		if (!maxholdq)
			q &= ~(32 - 1);

		if (!q)
			break;

		if (q-- % 32)
			continue;

		maxholdq = FUNC3(hw, FUNC1(q / 32));
		if (maxholdq)
			FUNC4(hw, FUNC1(q / 32), maxholdq);
	}
}