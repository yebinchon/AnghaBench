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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int tx_ready; } ;
struct fm10k_hw {int /*<<< orphan*/  hw_addr; TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_ERR_REQUESTS_PENDING ; 
 scalar_t__ FM10K_QUEUE_DISABLE_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FM10K_RXQCTL_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FM10K_TXDCTL_ENABLE ; 
 int FUNC3 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

s32 FUNC7(struct fm10k_hw *hw, u16 q_cnt)
{
	u32 reg;
	u16 i, time;

	/* clear tx_ready to prevent any false hits for reset */
	hw->mac.tx_ready = false;

	if (FUNC0(hw->hw_addr))
		return 0;

	/* clear the enable bit for all rings */
	for (i = 0; i < q_cnt; i++) {
		reg = FUNC3(hw, FUNC2(i));
		FUNC5(hw, FUNC2(i),
				reg & ~FM10K_TXDCTL_ENABLE);
		reg = FUNC3(hw, FUNC1(i));
		FUNC5(hw, FUNC1(i),
				reg & ~FM10K_RXQCTL_ENABLE);
	}

	FUNC4(hw);
	FUNC6(1);

	/* loop through all queues to verify that they are all disabled */
	for (i = 0, time = FM10K_QUEUE_DISABLE_TIMEOUT; time;) {
		/* if we are at end of rings all rings are disabled */
		if (i == q_cnt)
			return 0;

		/* if queue enables cleared, then move to next ring pair */
		reg = FUNC3(hw, FUNC2(i));
		if (!~reg || !(reg & FM10K_TXDCTL_ENABLE)) {
			reg = FUNC3(hw, FUNC1(i));
			if (!~reg || !(reg & FM10K_RXQCTL_ENABLE)) {
				i++;
				continue;
			}
		}

		/* decrement time and wait 1 usec */
		time--;
		if (time)
			FUNC6(1);
	}

	return FM10K_ERR_REQUESTS_PENDING;
}