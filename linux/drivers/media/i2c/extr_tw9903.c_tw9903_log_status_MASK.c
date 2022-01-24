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
struct tw9903 {int norm; } ;

/* Variables and functions */
 int V4L2_STD_525_60 ; 
 struct tw9903* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd)
{
	struct tw9903 *dec = FUNC0(sd);
	bool is_60hz = dec->norm & V4L2_STD_525_60;

	FUNC2(sd, "Standard: %d Hz\n", is_60hz ? 60 : 50);
	FUNC1(sd);
	return 0;
}