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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, int on)
{
	int ret;

	ret = FUNC1(sd, FUNC0(1), on ? 0x2E : 0x2F);
	if (!ret)
		ret = FUNC1(sd, FUNC0(0), on ? 0xFB : 0x7B);
	return ret;
}