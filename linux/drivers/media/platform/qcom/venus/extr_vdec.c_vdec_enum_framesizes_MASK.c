#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct venus_inst {int dummy; } ;
struct venus_format {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  step_height; int /*<<< orphan*/  max_height; int /*<<< orphan*/  min_height; int /*<<< orphan*/  step_width; int /*<<< orphan*/  max_width; int /*<<< orphan*/  min_width; } ;
struct v4l2_frmsizeenum {TYPE_1__ stepwise; int /*<<< orphan*/  type; scalar_t__ index; int /*<<< orphan*/  pixel_format; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  V4L2_FRMSIZE_TYPE_STEPWISE ; 
 struct venus_format* FUNC0 (struct venus_inst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC2 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC3 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC4 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC5 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC6 (struct venus_inst*) ; 
 struct venus_inst* FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *fh,
				struct v4l2_frmsizeenum *fsize)
{
	struct venus_inst *inst = FUNC7(file);
	const struct venus_format *fmt;

	fmt = FUNC0(inst, fsize->pixel_format,
			  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
	if (!fmt) {
		fmt = FUNC0(inst, fsize->pixel_format,
				  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
		if (!fmt)
			return -EINVAL;
	}

	if (fsize->index)
		return -EINVAL;

	fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;

	fsize->stepwise.min_width = FUNC5(inst);
	fsize->stepwise.max_width = FUNC4(inst);
	fsize->stepwise.step_width = FUNC6(inst);
	fsize->stepwise.min_height = FUNC2(inst);
	fsize->stepwise.max_height = FUNC1(inst);
	fsize->stepwise.step_height = FUNC3(inst);

	return 0;
}