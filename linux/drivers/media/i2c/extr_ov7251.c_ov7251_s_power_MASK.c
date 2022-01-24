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
struct v4l2_subdev {int dummy; } ;
struct ov7251 {int power_on; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ov7251_global_init_setting ; 
 int /*<<< orphan*/  FUNC4 (struct ov7251*) ; 
 int FUNC5 (struct ov7251*) ; 
 int FUNC6 (struct ov7251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ov7251* FUNC7 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd, int on)
{
	struct ov7251 *ov7251 = FUNC7(sd);
	int ret = 0;

	FUNC2(&ov7251->lock);

	/* If the power state is not modified - no work to do. */
	if (ov7251->power_on == !!on)
		goto exit;

	if (on) {
		ret = FUNC5(ov7251);
		if (ret < 0)
			goto exit;

		ret = FUNC6(ov7251,
					ov7251_global_init_setting,
					FUNC0(ov7251_global_init_setting));
		if (ret < 0) {
			FUNC1(ov7251->dev, "could not set init registers\n");
			FUNC4(ov7251);
			goto exit;
		}

		ov7251->power_on = true;
	} else {
		FUNC4(ov7251);
		ov7251->power_on = false;
	}

exit:
	FUNC3(&ov7251->lock);

	return ret;
}