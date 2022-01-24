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
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV5647_REG_MIPI_CTRL14 ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, int channel)
{
	u8 channel_id;
	int ret;

	ret = FUNC0(sd, OV5647_REG_MIPI_CTRL14, &channel_id);
	if (ret < 0)
		return ret;

	channel_id &= ~(3 << 6);
	return FUNC1(sd, OV5647_REG_MIPI_CTRL14, channel_id | (channel << 6));
}