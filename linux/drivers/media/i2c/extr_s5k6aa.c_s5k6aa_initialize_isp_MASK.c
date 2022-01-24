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
struct s5k6aa {int apply_crop; int apply_cfg; int /*<<< orphan*/  mipi_lanes; int /*<<< orphan*/  bus_type; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  s5k6aa_analog_config ; 
 int FUNC1 (struct s5k6aa*) ; 
 int FUNC2 (struct s5k6aa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 struct s5k6aa* FUNC5 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd)
{
	struct i2c_client *client = FUNC6(sd);
	struct s5k6aa *s5k6aa = FUNC5(sd);
	int ret;

	s5k6aa->apply_crop = 1;
	s5k6aa->apply_cfg = 1;
	FUNC0(100);

	ret = FUNC3(client);
	if (ret)
		return ret;
	ret = FUNC2(s5k6aa, s5k6aa->bus_type,
					 s5k6aa->mipi_lanes);
	if (ret)
		return ret;
	ret = FUNC4(sd, s5k6aa_analog_config);
	if (ret)
		return ret;
	FUNC0(20);

	return FUNC1(s5k6aa);
}