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
struct vb2_queue {scalar_t__ num_buffers; } ;
struct vb2_buffer {int dummy; } ;
struct v4l2_buffer {scalar_t__ index; int /*<<< orphan*/  bytesused; int /*<<< orphan*/  type; } ;
struct hva_stream {int /*<<< orphan*/  bytesused; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct hva_ctx {TYPE_1__ fh; int /*<<< orphan*/  name; } ;
struct file {int /*<<< orphan*/  private_data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 struct device* FUNC0 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct hva_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 struct hva_stream* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_buffer*) ; 
 struct vb2_queue* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct file*,int /*<<< orphan*/ ,struct v4l2_buffer*) ; 
 struct vb2_buffer* FUNC7 (struct vb2_queue*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *priv, struct v4l2_buffer *buf)
{
	struct hva_ctx *ctx = FUNC2(file->private_data);
	struct device *dev = FUNC0(ctx);

	if (buf->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
		/*
		 * depending on the targeted compressed video format, the
		 * capture buffer might contain headers (e.g. H.264 SPS/PPS)
		 * filled in by the driver client; the size of these data is
		 * copied from the bytesused field of the V4L2 buffer in the
		 * payload field of the hva stream buffer
		 */
		struct vb2_queue *vq;
		struct hva_stream *stream;
		struct vb2_buffer *vb2_buf;

		vq = FUNC5(ctx->fh.m2m_ctx, buf->type);

		if (buf->index >= vq->num_buffers) {
			FUNC1(dev, "%s buffer index %d out of range (%d)\n",
				ctx->name, buf->index, vq->num_buffers);
			return -EINVAL;
		}

		vb2_buf = FUNC7(vq, buf->index);
		stream = FUNC3(FUNC4(vb2_buf));
		stream->bytesused = buf->bytesused;
	}

	return FUNC6(file, ctx->fh.m2m_ctx, buf);
}