#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  index; } ;
struct vb2_v4l2_buffer {int /*<<< orphan*/  flags; TYPE_1__ vb2_buf; } ;
struct vb2_queue {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  index; struct vb2_queue* vb2_queue; } ;
struct delta_frame {int prepared; int /*<<< orphan*/  flags; int /*<<< orphan*/  paddr; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  info; int /*<<< orphan*/  index; } ;
struct delta_dev {int /*<<< orphan*/  dev; } ;
struct delta_ctx {int /*<<< orphan*/  name; int /*<<< orphan*/  frameinfo; struct delta_dev* dev; } ;

/* Variables and functions */
 int FUNC0 (struct delta_ctx*,struct delta_frame*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct delta_frame* FUNC3 (struct vb2_v4l2_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC4 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct delta_ctx* FUNC6 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct vb2_buffer *vb)
{
	struct vb2_queue *q = vb->vb2_queue;
	struct delta_ctx *ctx = FUNC6(q);
	struct delta_dev *delta = ctx->dev;
	struct vb2_v4l2_buffer *vbuf = FUNC4(vb);
	struct delta_frame *frame = FUNC3(vbuf);
	int ret = 0;

	if (!frame->prepared) {
		frame->index = vbuf->vb2_buf.index;
		frame->vaddr = FUNC7(&vbuf->vb2_buf, 0);
		frame->paddr = FUNC5(&vbuf->vb2_buf, 0);
		frame->info = ctx->frameinfo;

		ret = FUNC0(ctx, frame);
		if (ret) {
			FUNC2(delta->dev,
				"%s setup_frame() failed (%d)\n",
				ctx->name, ret);
			return ret;
		}
		frame->prepared = true;
		FUNC1(delta->dev,
			"%s frame[%d] prepared; virt=0x%p, phy=0x%pad\n",
			ctx->name, vb->index, frame->vaddr,
			&frame->paddr);
	}

	frame->flags = vbuf->flags;

	return 0;
}