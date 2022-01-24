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
typedef  union hdmi_infoframe {int dummy; } hdmi_infoframe ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  adv76xx_cri ; 
 scalar_t__ FUNC1 (struct v4l2_subdev*,int,union hdmi_infoframe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,union hdmi_infoframe*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,char*) ; 

__attribute__((used)) static void FUNC6(struct v4l2_subdev *sd)
{
	int i;

	if (!FUNC3(sd)) {
		FUNC5(sd, "receive DVI-D signal, no infoframes\n");
		return;
	}

	for (i = 0; i < FUNC0(adv76xx_cri); i++) {
		union hdmi_infoframe frame;
		struct i2c_client *client = FUNC4(sd);

		if (FUNC1(sd, i, &frame))
			return;
		FUNC2(KERN_INFO, &client->dev, &frame);
	}
}