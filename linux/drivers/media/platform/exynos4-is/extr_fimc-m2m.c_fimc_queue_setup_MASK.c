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
struct fimc_frame {unsigned int* payload; TYPE_1__* fmt; } ;
struct fimc_ctx {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int memplanes; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct fimc_frame*) ; 
 int FUNC1 (struct fimc_frame*) ; 
 struct fimc_frame* FUNC2 (struct fimc_ctx*,int /*<<< orphan*/ ) ; 
 struct fimc_ctx* FUNC3 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC4(struct vb2_queue *vq,
			    unsigned int *num_buffers, unsigned int *num_planes,
			    unsigned int sizes[], struct device *alloc_devs[])
{
	struct fimc_ctx *ctx = FUNC3(vq);
	struct fimc_frame *f;
	int i;

	f = FUNC2(ctx, vq->type);
	if (FUNC0(f))
		return FUNC1(f);
	/*
	 * Return number of non-contiguous planes (plane buffers)
	 * depending on the configured color format.
	 */
	if (!f->fmt)
		return -EINVAL;

	*num_planes = f->fmt->memplanes;
	for (i = 0; i < f->fmt->memplanes; i++)
		sizes[i] = f->payload[i];
	return 0;
}