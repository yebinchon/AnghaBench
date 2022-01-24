#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct venus_inst {int dummy; } ;
struct venus_format {int dummy; } ;
struct TYPE_7__ {int numerator; void* denominator; } ;
struct TYPE_6__ {int numerator; int /*<<< orphan*/  denominator; } ;
struct TYPE_5__ {int numerator; void* denominator; } ;
struct TYPE_8__ {TYPE_3__ step; TYPE_2__ max; TYPE_1__ min; } ;
struct v4l2_frmivalenum {scalar_t__ width; scalar_t__ height; TYPE_4__ stepwise; scalar_t__ index; int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  type; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  V4L2_FRMIVAL_TYPE_STEPWISE ; 
 struct venus_format* FUNC0 (struct venus_inst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct venus_inst*) ; 
 scalar_t__ FUNC2 (struct venus_inst*) ; 
 scalar_t__ FUNC3 (struct venus_inst*) ; 
 scalar_t__ FUNC4 (struct venus_inst*) ; 
 void* FUNC5 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC6 (struct venus_inst*) ; 
 struct venus_inst* FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *fh,
				    struct v4l2_frmivalenum *fival)
{
	struct venus_inst *inst = FUNC7(file);
	const struct venus_format *fmt;

	fival->type = V4L2_FRMIVAL_TYPE_STEPWISE;

	fmt = FUNC0(inst, fival->pixel_format,
			  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
	if (!fmt) {
		fmt = FUNC0(inst, fival->pixel_format,
				  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
		if (!fmt)
			return -EINVAL;
	}

	if (fival->index)
		return -EINVAL;

	if (!fival->width || !fival->height)
		return -EINVAL;

	if (fival->width > FUNC3(inst) ||
	    fival->width < FUNC4(inst) ||
	    fival->height > FUNC1(inst) ||
	    fival->height < FUNC2(inst))
		return -EINVAL;

	fival->stepwise.min.numerator = 1;
	fival->stepwise.min.denominator = FUNC5(inst);
	fival->stepwise.max.numerator = 1;
	fival->stepwise.max.denominator = FUNC6(inst);
	fival->stepwise.step.numerator = 1;
	fival->stepwise.step.denominator = FUNC5(inst);

	return 0;
}