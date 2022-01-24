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
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
#define  VENC_GET_FLD 128 
 int /*<<< orphan*/  VENC_VSTAT ; 
 int VENC_VSTAT_FIDST ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,char*) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC2(struct v4l2_subdev *sd,
			unsigned int cmd,
			void *arg)
{
	u32 val;

	switch (cmd) {
	case VENC_GET_FLD:
		val = FUNC1(sd, VENC_VSTAT);
		*((int *)arg) = ((val & VENC_VSTAT_FIDST) ==
		VENC_VSTAT_FIDST);
		break;
	default:
		FUNC0(sd, "Wrong IOCTL cmd\n");
		break;
	}

	return 0;
}