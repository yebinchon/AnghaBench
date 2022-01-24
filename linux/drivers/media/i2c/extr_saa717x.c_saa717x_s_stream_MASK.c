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
struct saa717x_state {int enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int) ; 
 struct saa717x_state* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, int enable)
{
	struct saa717x_state *decoder = FUNC1(sd);

	FUNC2(1, debug, sd, "decoder %s output\n",
			enable ? "enable" : "disable");
	decoder->enable = enable;
	FUNC0(sd, 0x193, enable ? 0xa6 : 0x26);
	return 0;
}