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
 int /*<<< orphan*/  KS_CDEM ; 
 int /*<<< orphan*/  KS_OFMTA ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, int enable)
{
	FUNC1(1, debug, sd, "s_stream(%d)\n", enable);
	if (enable) {
		/* All output pins on */
		FUNC0(sd, KS_OFMTA, 0xcf, 0x30);
		/* Obey the OEN pin */
		FUNC0(sd, KS_CDEM, 0x7f, 0x00);
	} else {
		/* Video output pins off */
		FUNC0(sd, KS_OFMTA, 0xcf, 0x00);
		/* Ignore the OEN pin */
		FUNC0(sd, KS_CDEM, 0x7f, 0x80);
	}
	return 0;
}