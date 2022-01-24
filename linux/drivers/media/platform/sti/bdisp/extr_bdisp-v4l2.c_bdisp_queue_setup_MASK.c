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
struct vb2_queue {int /*<<< orphan*/  type; } ;
struct device {int dummy; } ;
struct bdisp_frame {unsigned int sizeimage; int /*<<< orphan*/  fmt; } ;
struct bdisp_ctx {TYPE_1__* bdisp_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bdisp_frame*) ; 
 int FUNC1 (struct bdisp_frame*) ; 
 struct bdisp_frame* FUNC2 (struct bdisp_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct bdisp_ctx* FUNC4 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC5(struct vb2_queue *vq,
			     unsigned int *nb_buf, unsigned int *nb_planes,
			     unsigned int sizes[], struct device *alloc_devs[])
{
	struct bdisp_ctx *ctx = FUNC4(vq);
	struct bdisp_frame *frame = FUNC2(ctx, vq->type);

	if (FUNC0(frame)) {
		FUNC3(ctx->bdisp_dev->dev, "Invalid frame (%p)\n", frame);
		return FUNC1(frame);
	}

	if (!frame->fmt) {
		FUNC3(ctx->bdisp_dev->dev, "Invalid format\n");
		return -EINVAL;
	}

	if (*nb_planes)
		return sizes[0] < frame->sizeimage ? -EINVAL : 0;

	*nb_planes = 1;
	sizes[0] = frame->sizeimage;

	return 0;
}