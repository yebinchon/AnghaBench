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
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct tvp514x_decoder {int /*<<< orphan*/  hdl; TYPE_1__ sd; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tvp514x_decoder* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC0(client);
	struct tvp514x_decoder *decoder = FUNC2(sd);

	FUNC3(&decoder->sd);
	FUNC1(&decoder->sd.entity);
	FUNC4(&decoder->hdl);
	return 0;
}