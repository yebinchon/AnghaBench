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
struct gsc_frame {unsigned int* payload; TYPE_1__* fmt; } ;
struct gsc_ctx {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int num_planes; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct gsc_frame*) ; 
 int FUNC1 (struct gsc_frame*) ; 
 struct gsc_frame* FUNC2 (struct gsc_ctx*,int /*<<< orphan*/ ) ; 
 struct gsc_ctx* FUNC3 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC4(struct vb2_queue *vq,
			unsigned int *num_buffers, unsigned int *num_planes,
			unsigned int sizes[], struct device *alloc_devs[])
{
	struct gsc_ctx *ctx = FUNC3(vq);
	struct gsc_frame *frame;
	int i;

	frame = FUNC2(ctx, vq->type);
	if (FUNC0(frame))
		return FUNC1(frame);

	if (!frame->fmt)
		return -EINVAL;

	*num_planes = frame->fmt->num_planes;
	for (i = 0; i < frame->fmt->num_planes; i++)
		sizes[i] = frame->payload[i];
	return 0;
}