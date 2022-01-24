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
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, int enable)
{
	FUNC0(1, debug, sd, "s_stream %s\n", enable ? "on" : "off");

	FUNC1(sd, 0xf2, (enable ? 0x1b : 0x00));
	return 0;
}