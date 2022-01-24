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
struct ov5645 {int power_count; int /*<<< orphan*/  power_lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OV5645_IO_MIPI_CTRL00 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ov5645_global_init_setting ; 
 int /*<<< orphan*/  FUNC5 (struct ov5645*) ; 
 int FUNC6 (struct ov5645*) ; 
 int FUNC7 (struct ov5645*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ov5645*,int /*<<< orphan*/ ,int) ; 
 struct ov5645* FUNC9 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct v4l2_subdev *sd, int on)
{
	struct ov5645 *ov5645 = FUNC9(sd);
	int ret = 0;

	FUNC3(&ov5645->power_lock);

	/* If the power count is modified from 0 to != 0 or from != 0 to 0,
	 * update the power state.
	 */
	if (ov5645->power_count == !on) {
		if (on) {
			ret = FUNC6(ov5645);
			if (ret < 0)
				goto exit;

			ret = FUNC7(ov5645,
					ov5645_global_init_setting,
					FUNC0(ov5645_global_init_setting));
			if (ret < 0) {
				FUNC2(ov5645->dev,
					"could not set init registers\n");
				FUNC5(ov5645);
				goto exit;
			}

			FUNC10(500, 1000);
		} else {
			FUNC8(ov5645, OV5645_IO_MIPI_CTRL00, 0x58);
			FUNC5(ov5645);
		}
	}

	/* Update the power count. */
	ov5645->power_count += on ? 1 : -1;
	FUNC1(ov5645->power_count < 0);

exit:
	FUNC4(&ov5645->power_lock);

	return ret;
}