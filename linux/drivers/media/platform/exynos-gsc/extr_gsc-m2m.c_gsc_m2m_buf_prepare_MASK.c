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
struct gsc_frame {int /*<<< orphan*/ * payload; TYPE_1__* fmt; } ;
struct gsc_ctx {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int num_planes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gsc_frame*) ; 
 int FUNC1 (struct gsc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct gsc_frame* FUNC3 (struct gsc_ctx*,int /*<<< orphan*/ ) ; 
 struct gsc_ctx* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct vb2_buffer*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vb2_buffer *vb)
{
	struct gsc_ctx *ctx = FUNC4(vb->vb2_queue);
	struct gsc_frame *frame;
	int i;

	frame = FUNC3(ctx, vb->vb2_queue->type);
	if (FUNC0(frame))
		return FUNC1(frame);

	if (!FUNC2(vb->vb2_queue->type)) {
		for (i = 0; i < frame->fmt->num_planes; i++)
			FUNC5(vb, i, frame->payload[i]);
	}

	return 0;
}