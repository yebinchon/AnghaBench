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
struct adv748x_state {int /*<<< orphan*/  txb; int /*<<< orphan*/  txa; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV748X_CP_CLMP_POS ; 
 int /*<<< orphan*/  ADV748X_CP_CLMP_POS_DIS_AUTO ; 
 int /*<<< orphan*/  ADV748X_IO_10 ; 
 int /*<<< orphan*/  ADV748X_IO_10_CSI1_EN ; 
 int /*<<< orphan*/  ADV748X_IO_10_CSI4_EN ; 
 int /*<<< orphan*/  ADV748X_IO_PD ; 
 int /*<<< orphan*/  ADV748X_IO_PD_RX_EN ; 
 int /*<<< orphan*/  adv748x_init_afe ; 
 int /*<<< orphan*/  adv748x_init_hdmi ; 
 int FUNC0 (struct adv748x_state*) ; 
 int FUNC1 (struct adv748x_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct adv748x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adv748x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adv748x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct adv748x_state *state)
{
	int ret;
	u8 regval = 0;

	ret = FUNC1(state);
	if (ret < 0)
		return ret;

	ret = FUNC0(state);
	if (ret < 0)
		return ret;

	/* Initialize CP and AFE cores. */
	ret = FUNC3(state, adv748x_init_hdmi);
	if (ret)
		return ret;

	ret = FUNC3(state, adv748x_init_afe);
	if (ret)
		return ret;

	/* Reset TXA and TXB */
	FUNC2(&state->txa, 1);
	FUNC2(&state->txa, 0);
	FUNC2(&state->txb, 1);
	FUNC2(&state->txb, 0);

	/* Disable chip powerdown & Enable HDMI Rx block */
	FUNC5(state, ADV748X_IO_PD, ADV748X_IO_PD_RX_EN);

	/* Conditionally enable TXa and TXb. */
	if (FUNC6(&state->txa))
		regval |= ADV748X_IO_10_CSI4_EN;
	if (FUNC6(&state->txb))
		regval |= ADV748X_IO_10_CSI1_EN;
	FUNC5(state, ADV748X_IO_10, regval);

	/* Use vid_std and v_freq as freerun resolution for CP */
	FUNC4(state, ADV748X_CP_CLMP_POS, ADV748X_CP_CLMP_POS_DIS_AUTO,
					      ADV748X_CP_CLMP_POS_DIS_AUTO);

	return 0;
}