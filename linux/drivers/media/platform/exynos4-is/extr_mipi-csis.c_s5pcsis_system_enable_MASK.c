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
struct csis_state {int num_lanes; } ;

/* Variables and functions */
 int /*<<< orphan*/  S5PCSIS_CTRL ; 
 int S5PCSIS_CTRL_ENABLE ; 
 int /*<<< orphan*/  S5PCSIS_DPHYCTRL ; 
 int S5PCSIS_DPHYCTRL_ENABLE ; 
 int FUNC0 (struct csis_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csis_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct csis_state *state, int on)
{
	u32 val, mask;

	val = FUNC0(state, S5PCSIS_CTRL);
	if (on)
		val |= S5PCSIS_CTRL_ENABLE;
	else
		val &= ~S5PCSIS_CTRL_ENABLE;
	FUNC1(state, S5PCSIS_CTRL, val);

	val = FUNC0(state, S5PCSIS_DPHYCTRL);
	val &= ~S5PCSIS_DPHYCTRL_ENABLE;
	if (on) {
		mask = (1 << (state->num_lanes + 1)) - 1;
		val |= (mask & S5PCSIS_DPHYCTRL_ENABLE);
	}
	FUNC1(state, S5PCSIS_DPHYCTRL, val);
}