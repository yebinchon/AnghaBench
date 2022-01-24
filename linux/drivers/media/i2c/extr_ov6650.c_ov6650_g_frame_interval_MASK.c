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
struct TYPE_2__ {int /*<<< orphan*/  denominator; int /*<<< orphan*/  numerator; } ;
struct v4l2_subdev_frame_interval {TYPE_1__ interval; } ;
struct v4l2_subdev {int dummy; } ;
struct ov6650 {int /*<<< orphan*/  pclk_max; int /*<<< orphan*/  pclk_limit; int /*<<< orphan*/  tpf; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FRAME_RATE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ov6650* FUNC3 (struct i2c_client*) ; 
 struct i2c_client* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
				   struct v4l2_subdev_frame_interval *ival)
{
	struct i2c_client *client = FUNC4(sd);
	struct ov6650 *priv = FUNC3(client);

	ival->interval.numerator = FUNC0(FUNC2(&priv->tpf,
			priv->pclk_limit, priv->pclk_max));
	ival->interval.denominator = FRAME_RATE_MAX;

	FUNC1(&client->dev, "Frame interval: %u/%u s\n",
		ival->interval.numerator, ival->interval.denominator);

	return 0;
}