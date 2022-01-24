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
struct vpe_q_data {int nplanes; int flags; scalar_t__* sizeimage; } ;
struct vpe_ctx {int /*<<< orphan*/  dev; } ;
struct vb2_v4l2_buffer {scalar_t__ field; } ;
struct vb2_buffer {TYPE_1__* vb2_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
 int Q_IS_INTERLACED ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 scalar_t__ V4L2_FIELD_BOTTOM ; 
 scalar_t__ V4L2_FIELD_NONE ; 
 scalar_t__ V4L2_FIELD_SEQ_TB ; 
 scalar_t__ V4L2_FIELD_TOP ; 
 struct vpe_q_data* FUNC0 (struct vpe_ctx*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC1 (struct vb2_buffer*) ; 
 struct vpe_ctx* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct vb2_buffer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_buffer*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,long) ; 

__attribute__((used)) static int FUNC7(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC1(vb);
	struct vpe_ctx *ctx = FUNC2(vb->vb2_queue);
	struct vpe_q_data *q_data;
	int i, num_planes;

	FUNC5(ctx->dev, "type: %d\n", vb->vb2_queue->type);

	q_data = FUNC0(ctx, vb->vb2_queue->type);
	num_planes = q_data->nplanes;

	if (vb->vb2_queue->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
		if (!(q_data->flags & Q_IS_INTERLACED)) {
			vbuf->field = V4L2_FIELD_NONE;
		} else {
			if (vbuf->field != V4L2_FIELD_TOP &&
			    vbuf->field != V4L2_FIELD_BOTTOM &&
			    vbuf->field != V4L2_FIELD_SEQ_TB)
				return -EINVAL;
		}
	}

	for (i = 0; i < num_planes; i++) {
		if (FUNC3(vb, i) < q_data->sizeimage[i]) {
			FUNC6(ctx->dev,
				"data will not fit into plane (%lu < %lu)\n",
				FUNC3(vb, i),
				(long) q_data->sizeimage[i]);
			return -EINVAL;
		}
	}

	for (i = 0; i < num_planes; i++)
		FUNC4(vb, i, q_data->sizeimage[i]);

	return 0;
}