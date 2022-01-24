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
struct v4l2_control {int member_1; int id; int /*<<< orphan*/  value; int /*<<< orphan*/  member_0; } ;
struct s5k6aa {int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct v4l2_control const*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  REG_G_SPEC_EFFECTS ; 
#define  V4L2_COLORFX_BW 133 
#define  V4L2_COLORFX_NEGATIVE 132 
#define  V4L2_COLORFX_NONE 131 
#define  V4L2_COLORFX_SEPIA 130 
#define  V4L2_COLORFX_SKETCH 129 
#define  V4L2_COLORFX_SKY_BLUE 128 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct s5k6aa *s5k6aa, int val)
{
	struct i2c_client *client = FUNC2(&s5k6aa->sd);
	static const struct v4l2_control colorfx[] = {
		{ V4L2_COLORFX_NONE,	 0 },
		{ V4L2_COLORFX_BW,	 1 },
		{ V4L2_COLORFX_NEGATIVE, 2 },
		{ V4L2_COLORFX_SEPIA,	 3 },
		{ V4L2_COLORFX_SKY_BLUE, 4 },
		{ V4L2_COLORFX_SKETCH,	 5 },
	};
	int i;

	for (i = 0; i < FUNC0(colorfx); i++) {
		if (colorfx[i].id == val)
			return FUNC1(client, REG_G_SPEC_EFFECTS,
					    colorfx[i].value);
	}
	return -EINVAL;
}