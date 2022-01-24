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

/* Variables and functions */
 int FUNC0 (struct v4l2_subdev*,unsigned char,unsigned char*) ; 
 int FUNC1 (struct v4l2_subdev*,unsigned char,unsigned char) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, unsigned char reg,
		unsigned char mask, unsigned char value)
{
	unsigned char orig;
	int ret;

	ret = FUNC0(sd, reg, &orig);
	if (ret)
		return ret;

	return FUNC1(sd, reg, (orig & ~mask) | (value & mask));
}