#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct adv748x_state {int /*<<< orphan*/  mutex; } ;
struct TYPE_8__ {int error; int /*<<< orphan*/ * lock; } ;
struct TYPE_7__ {TYPE_2__* ctrl_handler; } ;
struct adv748x_afe {TYPE_2__ ctrl_hdl; TYPE_1__ sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV748X_SDP_BRI_DEF ; 
 int /*<<< orphan*/  ADV748X_SDP_BRI_MAX ; 
 int /*<<< orphan*/  ADV748X_SDP_BRI_MIN ; 
 int /*<<< orphan*/  ADV748X_SDP_CON_DEF ; 
 int /*<<< orphan*/  ADV748X_SDP_CON_MAX ; 
 int /*<<< orphan*/  ADV748X_SDP_CON_MIN ; 
 int /*<<< orphan*/  ADV748X_SDP_HUE_DEF ; 
 int /*<<< orphan*/  ADV748X_SDP_HUE_MAX ; 
 int /*<<< orphan*/  ADV748X_SDP_HUE_MIN ; 
 int /*<<< orphan*/  ADV748X_SDP_SAT_DEF ; 
 int /*<<< orphan*/  ADV748X_SDP_SAT_MAX ; 
 int /*<<< orphan*/  ADV748X_SDP_SAT_MIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_HUE ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  V4L2_CID_TEST_PATTERN ; 
 int /*<<< orphan*/  adv748x_afe_ctrl_ops ; 
 struct adv748x_state* FUNC1 (struct adv748x_afe*) ; 
 int /*<<< orphan*/  afe_ctrl_frp_menu ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct adv748x_afe *afe)
{
	struct adv748x_state *state = FUNC1(afe);

	FUNC3(&afe->ctrl_hdl, 5);

	/* Use our mutex for the controls */
	afe->ctrl_hdl.lock = &state->mutex;

	FUNC5(&afe->ctrl_hdl, &adv748x_afe_ctrl_ops,
			  V4L2_CID_BRIGHTNESS, ADV748X_SDP_BRI_MIN,
			  ADV748X_SDP_BRI_MAX, 1, ADV748X_SDP_BRI_DEF);
	FUNC5(&afe->ctrl_hdl, &adv748x_afe_ctrl_ops,
			  V4L2_CID_CONTRAST, ADV748X_SDP_CON_MIN,
			  ADV748X_SDP_CON_MAX, 1, ADV748X_SDP_CON_DEF);
	FUNC5(&afe->ctrl_hdl, &adv748x_afe_ctrl_ops,
			  V4L2_CID_SATURATION, ADV748X_SDP_SAT_MIN,
			  ADV748X_SDP_SAT_MAX, 1, ADV748X_SDP_SAT_DEF);
	FUNC5(&afe->ctrl_hdl, &adv748x_afe_ctrl_ops,
			  V4L2_CID_HUE, ADV748X_SDP_HUE_MIN,
			  ADV748X_SDP_HUE_MAX, 1, ADV748X_SDP_HUE_DEF);

	FUNC6(&afe->ctrl_hdl, &adv748x_afe_ctrl_ops,
				     V4L2_CID_TEST_PATTERN,
				     FUNC0(afe_ctrl_frp_menu) - 1,
				     0, 0, afe_ctrl_frp_menu);

	afe->sd.ctrl_handler = &afe->ctrl_hdl;
	if (afe->ctrl_hdl.error) {
		FUNC2(&afe->ctrl_hdl);
		return afe->ctrl_hdl.error;
	}

	return FUNC4(&afe->ctrl_hdl);
}