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
struct vb2_queue {int dummy; } ;
struct v4l2_m2m_ctx {int dummy; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 struct vb2_queue* FUNC0 (struct v4l2_m2m_ctx*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_m2m_ctx*) ; 
 int FUNC2 (struct vb2_queue*,int) ; 

int FUNC3(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
		      enum v4l2_buf_type type)
{
	struct vb2_queue *vq;
	int ret;

	vq = FUNC0(m2m_ctx, type);
	ret = FUNC2(vq, type);
	if (!ret)
		FUNC1(m2m_ctx);

	return ret;
}