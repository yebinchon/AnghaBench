#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vb2_buffer {TYPE_2__* vb2_queue; } ;
struct fimc_frame {int /*<<< orphan*/ * payload; TYPE_1__* fmt; } ;
struct fimc_ctx {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int memplanes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fimc_frame*) ; 
 int FUNC1 (struct fimc_frame*) ; 
 struct fimc_frame* FUNC2 (struct fimc_ctx*,int /*<<< orphan*/ ) ; 
 struct fimc_ctx* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_buffer*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vb2_buffer *vb)
{
	struct fimc_ctx *ctx = FUNC3(vb->vb2_queue);
	struct fimc_frame *frame;
	int i;

	frame = FUNC2(ctx, vb->vb2_queue->type);
	if (FUNC0(frame))
		return FUNC1(frame);

	for (i = 0; i < frame->fmt->memplanes; i++)
		FUNC4(vb, i, frame->payload[i]);

	return 0;
}