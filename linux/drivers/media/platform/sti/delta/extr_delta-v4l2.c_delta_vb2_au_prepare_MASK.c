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
struct vb2_v4l2_buffer {scalar_t__ field; } ;
struct vb2_queue {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  index; struct vb2_queue* vb2_queue; } ;
struct delta_dev {int /*<<< orphan*/  dev; } ;
struct delta_ctx {int /*<<< orphan*/  name; struct delta_dev* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  vb2_buf; } ;
struct delta_au {int prepared; int /*<<< orphan*/  paddr; int /*<<< orphan*/  vaddr; TYPE_1__ vbuf; } ;

/* Variables and functions */
 scalar_t__ V4L2_FIELD_ANY ; 
 scalar_t__ V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct delta_au* FUNC1 (struct vb2_v4l2_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC2 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct delta_ctx* FUNC4 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vb2_buffer *vb)
{
	struct vb2_queue *q = vb->vb2_queue;
	struct delta_ctx *ctx = FUNC4(q);
	struct delta_dev *delta = ctx->dev;
	struct vb2_v4l2_buffer *vbuf = FUNC2(vb);
	struct delta_au *au = FUNC1(vbuf);

	if (!au->prepared) {
		/* get memory addresses */
		au->vaddr = FUNC5(&au->vbuf.vb2_buf, 0);
		au->paddr = FUNC3
				(&au->vbuf.vb2_buf, 0);
		au->prepared = true;
		FUNC0(delta->dev, "%s au[%d] prepared; virt=0x%p, phy=0x%pad\n",
			ctx->name, vb->index, au->vaddr, &au->paddr);
	}

	if (vbuf->field == V4L2_FIELD_ANY)
		vbuf->field = V4L2_FIELD_NONE;

	return 0;
}