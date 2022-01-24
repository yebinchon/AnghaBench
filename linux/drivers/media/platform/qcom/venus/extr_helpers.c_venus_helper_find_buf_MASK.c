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
struct venus_inst {struct v4l2_m2m_ctx* m2m_ctx; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct v4l2_m2m_ctx {int dummy; } ;

/* Variables and functions */
 unsigned int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 struct vb2_v4l2_buffer* FUNC0 (struct v4l2_m2m_ctx*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC1 (struct v4l2_m2m_ctx*,int /*<<< orphan*/ ) ; 

struct vb2_v4l2_buffer *
FUNC2(struct venus_inst *inst, unsigned int type, u32 idx)
{
	struct v4l2_m2m_ctx *m2m_ctx = inst->m2m_ctx;

	if (type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
		return FUNC1(m2m_ctx, idx);
	else
		return FUNC0(m2m_ctx, idx);
}