#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct venus_inst {unsigned int input_buf_size; unsigned int num_input_bufs; unsigned int num_output_bufs; unsigned int output_buf_size; int /*<<< orphan*/  lock; int /*<<< orphan*/  codec_state; int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_2__* fmt_cap; int /*<<< orphan*/  out_height; int /*<<< orphan*/  out_width; TYPE_1__* fmt_out; } ;
struct vb2_queue {int type; } ;
struct device {int dummy; } ;
struct TYPE_4__ {unsigned int num_planes; int /*<<< orphan*/  pixfmt; } ;
struct TYPE_3__ {unsigned int num_planes; int /*<<< orphan*/  pixfmt; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE 129 
#define  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE 128 
 int /*<<< orphan*/  VENUS_DEC_STATE_CAPTURE_SETUP ; 
 int /*<<< orphan*/  VENUS_DEC_STATE_STOPPED ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct venus_inst* FUNC3 (struct vb2_queue*) ; 
 int FUNC4 (struct venus_inst*,unsigned int*,unsigned int*) ; 
 int FUNC5 (struct venus_inst*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct venus_inst*) ; 

__attribute__((used)) static int FUNC8(struct vb2_queue *q,
			    unsigned int *num_buffers, unsigned int *num_planes,
			    unsigned int sizes[], struct device *alloc_devs[])
{
	struct venus_inst *inst = FUNC3(q);
	unsigned int in_num, out_num;
	int ret = 0;

	if (*num_planes) {
		unsigned int output_buf_size = FUNC7(inst);

		if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE &&
		    *num_planes != inst->fmt_out->num_planes)
			return -EINVAL;

		if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE &&
		    *num_planes != inst->fmt_cap->num_planes)
			return -EINVAL;

		if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE &&
		    sizes[0] < inst->input_buf_size)
			return -EINVAL;

		if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE &&
		    sizes[0] < output_buf_size)
			return -EINVAL;

		return 0;
	}

	ret = FUNC5(inst);
	if (ret)
		return ret;

	ret = FUNC4(inst, &in_num, &out_num);
	if (ret)
		return ret;

	switch (q->type) {
	case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
		*num_planes = inst->fmt_out->num_planes;
		sizes[0] = FUNC6(inst->fmt_out->pixfmt,
						    inst->out_width,
						    inst->out_height);
		sizes[0] = FUNC0(sizes[0], inst->input_buf_size);
		inst->input_buf_size = sizes[0];
		*num_buffers = FUNC0(*num_buffers, in_num);
		inst->num_input_bufs = *num_buffers;
		inst->num_output_bufs = out_num;
		break;
	case V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE:
		*num_planes = inst->fmt_cap->num_planes;
		sizes[0] = FUNC6(inst->fmt_cap->pixfmt,
						    inst->width,
						    inst->height);
		inst->output_buf_size = sizes[0];
		*num_buffers = FUNC0(*num_buffers, out_num);
		inst->num_output_bufs = *num_buffers;

		FUNC1(&inst->lock);
		if (inst->codec_state == VENUS_DEC_STATE_CAPTURE_SETUP)
			inst->codec_state = VENUS_DEC_STATE_STOPPED;
		FUNC2(&inst->lock);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}