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
typedef  int /*<<< orphan*/  u32 ;
struct venc_state {int /*<<< orphan*/  output; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 struct venc_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct v4l2_subdev*,char*) ; 
 int FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, u32 input, u32 output,
			  u32 config)
{
	struct venc_state *venc = FUNC0(sd);
	int ret;

	FUNC1(debug, 1, sd, "venc_s_routing\n");

	ret = FUNC2(sd, output);
	if (!ret)
		venc->output = output;

	return ret;
}