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
struct mtk_mdp_frame {int /*<<< orphan*/ * payload; TYPE_1__* fmt; } ;
struct mtk_mdp_ctx {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int num_planes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtk_mdp_frame* FUNC1 (struct mtk_mdp_ctx*,int /*<<< orphan*/ ) ; 
 struct mtk_mdp_ctx* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_buffer*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vb2_buffer *vb)
{
	struct mtk_mdp_ctx *ctx = FUNC2(vb->vb2_queue);
	struct mtk_mdp_frame *frame;
	int i;

	frame = FUNC1(ctx, vb->vb2_queue->type);

	if (!FUNC0(vb->vb2_queue->type)) {
		for (i = 0; i < frame->fmt->num_planes; i++)
			FUNC3(vb, i, frame->payload[i]);
	}

	return 0;
}