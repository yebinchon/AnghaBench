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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  sd; } ;
struct adv748x_state {TYPE_1__ hdmi; } ;
struct adv748x_csi2 {int num_lanes; int /*<<< orphan*/ * src; struct adv748x_state* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV748X_PAGE_TXA ; 
 int /*<<< orphan*/  ADV748X_PAGE_TXB ; 
 int /*<<< orphan*/  FUNC0 (struct adv748x_state*,int /*<<< orphan*/ ,int,int,int*) ; 
 scalar_t__ FUNC1 (struct adv748x_csi2*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct adv748x_csi2 *tx)
{
	struct adv748x_state *state = tx->state;
	u8 page = FUNC1(tx) ? ADV748X_PAGE_TXA : ADV748X_PAGE_TXB;
	int ret = 0;

	/* Enable n-lane MIPI */
	FUNC0(state, page, 0x00, 0x80 | tx->num_lanes, &ret);

	/* Set Auto DPHY Timing */
	FUNC0(state, page, 0x00, 0xa0 | tx->num_lanes, &ret);

	/* ADI Required Write */
	if (tx->src == &state->hdmi.sd) {
		FUNC0(state, page, 0xdb, 0x10, &ret);
		FUNC0(state, page, 0xd6, 0x07, &ret);
	} else {
		FUNC0(state, page, 0xd2, 0x40, &ret);
	}

	FUNC0(state, page, 0xc4, 0x0a, &ret);
	FUNC0(state, page, 0x71, 0x33, &ret);
	FUNC0(state, page, 0x72, 0x11, &ret);

	/* i2c_dphy_pwdn - 1'b0 */
	FUNC0(state, page, 0xf0, 0x00, &ret);

	/* ADI Required Writes*/
	FUNC0(state, page, 0x31, 0x82, &ret);
	FUNC0(state, page, 0x1e, 0x40, &ret);

	/* i2c_mipi_pll_en - 1'b1 */
	FUNC0(state, page, 0xda, 0x01, &ret);
	FUNC2(2000, 2500);

	/* Power-up CSI-TX */
	FUNC0(state, page, 0x00, 0x20 | tx->num_lanes, &ret);
	FUNC2(1000, 1500);

	/* ADI Required Writes */
	FUNC0(state, page, 0xc1, 0x2b, &ret);
	FUNC2(1000, 1500);
	FUNC0(state, page, 0x31, 0x80, &ret);

	return ret;
}