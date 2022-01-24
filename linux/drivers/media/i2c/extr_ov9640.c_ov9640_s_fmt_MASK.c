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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  code; int /*<<< orphan*/  width; } ;
struct ov9640_reg_alt {int /*<<< orphan*/  member_0; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ov9640_reg_alt*) ; 
 int FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ov9640_reg_alt*) ; 
 struct i2c_client* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			struct v4l2_mbus_framefmt *mf)
{
	struct i2c_client *client = FUNC4(sd);
	struct ov9640_reg_alt alts = {0};
	int ret;

	FUNC0(mf->code, &alts);

	FUNC2(client);

	ret = FUNC1(client);
	if (ret)
		return ret;

	return FUNC3(client, mf->width, mf->code, &alts);
}