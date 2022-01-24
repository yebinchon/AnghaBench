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
typedef  int /*<<< orphan*/  u8 ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct v4l2_subdev *sd, bool enable)
{
	if (enable) {
		u8 csc_mode = 0;

		FUNC1(sd, csc_mode);
		FUNC0(sd,
				  4096-564, 0, 0, 256,
				  0, 4096-564, 0, 256,
				  0, 0, 4096-564, 256);
		/* enable CSC */
		FUNC2(sd, 0x3b, 0xfe, 0x1);
		/* AVI infoframe: Limited range RGB (16-235) */
		FUNC2(sd, 0xcd, 0xf9, 0x02);
	} else {
		/* disable CSC */
		FUNC2(sd, 0x3b, 0xfe, 0x0);
		/* AVI infoframe: Full range RGB (0-255) */
		FUNC2(sd, 0xcd, 0xf9, 0x04);
	}
}