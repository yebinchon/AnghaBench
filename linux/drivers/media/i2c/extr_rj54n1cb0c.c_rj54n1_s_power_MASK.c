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
struct rj54n1 {scalar_t__ pwup_gpio; scalar_t__ enable_gpio; int /*<<< orphan*/  clk; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct rj54n1* FUNC4 (struct i2c_client*) ; 
 struct i2c_client* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int on)
{
	struct i2c_client *client = FUNC5(sd);
	struct rj54n1 *rj54n1 = FUNC4(client);

	if (on) {
		if (rj54n1->pwup_gpio)
			FUNC2(rj54n1->pwup_gpio, 1);
		if (rj54n1->enable_gpio)
			FUNC2(rj54n1->enable_gpio, 1);

		FUNC3(1);

		return FUNC1(rj54n1->clk);
	}

	FUNC0(rj54n1->clk);

	if (rj54n1->enable_gpio)
		FUNC2(rj54n1->enable_gpio, 0);
	if (rj54n1->pwup_gpio)
		FUNC2(rj54n1->pwup_gpio, 0);

	return 0;
}