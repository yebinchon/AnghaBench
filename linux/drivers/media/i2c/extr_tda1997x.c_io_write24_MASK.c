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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct v4l2_subdev*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC1(struct v4l2_subdev *sd, u16 reg, u32 val)
{
	int ret;

	ret = FUNC0(sd, reg, (val >> 16) & 0xff);
	if (ret < 0)
		return ret;
	ret = FUNC0(sd, reg + 1, (val >> 8) & 0xff);
	if (ret < 0)
		return ret;
	ret = FUNC0(sd, reg + 2, val & 0xff);
	if (ret < 0)
		return ret;
	return 0;
}