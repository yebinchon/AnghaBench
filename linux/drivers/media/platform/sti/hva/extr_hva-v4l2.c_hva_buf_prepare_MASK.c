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
struct vb2_v4l2_buffer {scalar_t__ field; int /*<<< orphan*/  vb2_buf; } ;
struct vb2_buffer {int /*<<< orphan*/  index; TYPE_1__* vb2_queue; } ;
struct hva_stream {int prepared; void* paddr; void* vaddr; int /*<<< orphan*/  size; } ;
struct hva_frame {int prepared; void* paddr; void* vaddr; int /*<<< orphan*/  info; } ;
struct hva_ctx {int /*<<< orphan*/  name; int /*<<< orphan*/  frameinfo; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 scalar_t__ V4L2_FIELD_ANY ; 
 scalar_t__ V4L2_FIELD_NONE ; 
 struct device* FUNC0 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,...) ; 
 struct hva_frame* FUNC2 (struct vb2_v4l2_buffer*) ; 
 struct hva_stream* FUNC3 (struct vb2_v4l2_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC4 (struct vb2_buffer*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hva_ctx* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct vb2_buffer *vb)
{
	struct hva_ctx *ctx = FUNC6(vb->vb2_queue);
	struct device *dev = FUNC0(ctx);
	struct vb2_v4l2_buffer *vbuf = FUNC4(vb);

	if (vb->vb2_queue->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
		struct hva_frame *frame = FUNC2(vbuf);

		if (vbuf->field == V4L2_FIELD_ANY)
			vbuf->field = V4L2_FIELD_NONE;
		if (vbuf->field != V4L2_FIELD_NONE) {
			FUNC1(dev,
				"%s frame[%d] prepare: %d field not supported\n",
				ctx->name, vb->index, vbuf->field);
			return -EINVAL;
		}

		if (!frame->prepared) {
			/* get memory addresses */
			frame->vaddr = FUNC8(&vbuf->vb2_buf, 0);
			frame->paddr = FUNC5(
					&vbuf->vb2_buf, 0);
			frame->info = ctx->frameinfo;
			frame->prepared = true;

			FUNC1(dev,
				"%s frame[%d] prepared; virt=%p, phy=%pad\n",
				ctx->name, vb->index,
				frame->vaddr, &frame->paddr);
		}
	} else {
		struct hva_stream *stream = FUNC3(vbuf);

		if (!stream->prepared) {
			/* get memory addresses */
			stream->vaddr = FUNC8(&vbuf->vb2_buf, 0);
			stream->paddr = FUNC5(
					&vbuf->vb2_buf, 0);
			stream->size = FUNC7(&vbuf->vb2_buf, 0);
			stream->prepared = true;

			FUNC1(dev,
				"%s stream[%d] prepared; virt=%p, phy=%pad\n",
				ctx->name, vb->index,
				stream->vaddr, &stream->paddr);
		}
	}

	return 0;
}