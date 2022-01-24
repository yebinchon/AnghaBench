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
 int EINVAL ; 
 int /*<<< orphan*/  VDAC_COMPONENT ; 
 int /*<<< orphan*/  VDAC_S_VIDEO ; 
 int /*<<< orphan*/  VENC_DACSEL ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct v4l2_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, u32 out_index)
{
	switch (out_index) {
	case 0:
		FUNC0(debug, 1, sd, "Setting output to Composite\n");
		FUNC1(sd, VENC_DACSEL, 0);
		break;
	case 1:
		FUNC0(debug, 1, sd, "Setting output to Component\n");
		FUNC1(sd, VENC_DACSEL, VDAC_COMPONENT);
		break;
	case 2:
		FUNC0(debug, 1, sd, "Setting output to S-video\n");
		FUNC1(sd, VENC_DACSEL, VDAC_S_VIDEO);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}