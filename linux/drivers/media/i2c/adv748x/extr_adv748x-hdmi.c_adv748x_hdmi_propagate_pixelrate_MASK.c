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
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pixelclock; } ;
struct v4l2_dv_timings {TYPE_1__ bt; } ;
struct adv748x_hdmi {int /*<<< orphan*/  sd; int /*<<< orphan*/ * pads; } ;

/* Variables and functions */
 size_t ADV748X_HDMI_SOURCE ; 
 int ENOLINK ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct v4l2_dv_timings*) ; 

__attribute__((used)) static int FUNC3(struct adv748x_hdmi *hdmi)
{
	struct v4l2_subdev *tx;
	struct v4l2_dv_timings timings;

	tx = FUNC1(&hdmi->pads[ADV748X_HDMI_SOURCE]);
	if (!tx)
		return -ENOLINK;

	FUNC2(&hdmi->sd, &timings);

	return FUNC0(tx, timings.bt.pixelclock);
}