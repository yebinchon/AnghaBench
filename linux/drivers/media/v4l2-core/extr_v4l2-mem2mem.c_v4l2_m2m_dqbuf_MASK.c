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
struct v4l2_buffer {int /*<<< orphan*/  type; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int O_NONBLOCK ; 
 struct vb2_queue* FUNC0 (struct v4l2_m2m_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vb2_queue*,struct v4l2_buffer*,int) ; 

int FUNC2(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
		   struct v4l2_buffer *buf)
{
	struct vb2_queue *vq;

	vq = FUNC0(m2m_ctx, buf->type);
	return FUNC1(vq, buf, file->f_flags & O_NONBLOCK);
}