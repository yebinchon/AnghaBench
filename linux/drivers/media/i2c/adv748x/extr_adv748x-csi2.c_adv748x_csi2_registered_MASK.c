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
struct v4l2_subdev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {struct adv748x_csi2* tx; int /*<<< orphan*/  sd; } ;
struct TYPE_3__ {struct adv748x_csi2* tx; int /*<<< orphan*/  sd; } ;
struct adv748x_state {TYPE_2__ hdmi; TYPE_1__ afe; } ;
struct adv748x_csi2 {struct adv748x_state* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV748X_AFE_SOURCE ; 
 int /*<<< orphan*/  ADV748X_HDMI_SOURCE ; 
 int FUNC0 (struct adv748x_csi2*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct adv748x_csi2* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct adv748x_state*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct adv748x_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct adv748x_state*) ; 
 scalar_t__ FUNC5 (struct adv748x_csi2*) ; 
 int FUNC6 (struct adv748x_csi2*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd)
{
	struct adv748x_csi2 *tx = FUNC1(sd);
	struct adv748x_state *state = tx->state;
	int ret;

	FUNC2(state, "Registered %s (%s)", FUNC5(tx) ? "TXA":"TXB",
			sd->name);

	/*
	 * Link TXA to AFE and HDMI, and TXB to AFE only as TXB cannot output
	 * HDMI.
	 *
	 * The HDMI->TXA link is enabled by default, as is the AFE->TXB one.
	 */
	if (FUNC3(state)) {
		ret = FUNC0(tx, sd->v4l2_dev,
						 &state->afe.sd,
						 ADV748X_AFE_SOURCE,
						 FUNC6(tx));
		if (ret)
			return ret;

		/* TXB can output AFE signals only. */
		if (FUNC6(tx))
			state->afe.tx = tx;
	}

	/* Register link to HDMI for TXA only. */
	if (FUNC6(tx) || !FUNC4(state))
		return 0;

	ret = FUNC0(tx, sd->v4l2_dev, &state->hdmi.sd,
					 ADV748X_HDMI_SOURCE, true);
	if (ret)
		return ret;

	/* The default HDMI output is TXA. */
	state->hdmi.tx = tx;

	return 0;
}