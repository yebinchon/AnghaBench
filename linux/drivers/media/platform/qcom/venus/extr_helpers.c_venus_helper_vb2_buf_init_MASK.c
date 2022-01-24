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
struct venus_inst {int /*<<< orphan*/  registeredbufs; } ;
struct venus_buffer {int /*<<< orphan*/  reg_list; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  size; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {scalar_t__ type; int /*<<< orphan*/  vb2_queue; } ;
struct sg_table {int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC2 (struct vb2_buffer*) ; 
 struct venus_buffer* FUNC3 (struct vb2_v4l2_buffer*) ; 
 struct sg_table* FUNC4 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 struct venus_inst* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

int FUNC7(struct vb2_buffer *vb)
{
	struct venus_inst *inst = FUNC5(vb->vb2_queue);
	struct vb2_v4l2_buffer *vbuf = FUNC2(vb);
	struct venus_buffer *buf = FUNC3(vbuf);
	struct sg_table *sgt;

	sgt = FUNC4(vb, 0);
	if (!sgt)
		return -EFAULT;

	buf->size = FUNC6(vb, 0);
	buf->dma_addr = FUNC1(sgt->sgl);

	if (vb->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
		FUNC0(&buf->reg_list, &inst->registeredbufs);

	return 0;
}