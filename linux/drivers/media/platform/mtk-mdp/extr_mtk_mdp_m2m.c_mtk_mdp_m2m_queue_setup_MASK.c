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
struct mtk_mdp_frame {unsigned int* payload; TYPE_1__* fmt; } ;
struct mtk_mdp_ctx {int /*<<< orphan*/  id; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int num_planes; } ;

/* Variables and functions */
 struct mtk_mdp_frame* FUNC0 (struct mtk_mdp_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 struct mtk_mdp_ctx* FUNC2 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC3(struct vb2_queue *vq,
			unsigned int *num_buffers, unsigned int *num_planes,
			unsigned int sizes[], struct device *alloc_devs[])
{
	struct mtk_mdp_ctx *ctx = FUNC2(vq);
	struct mtk_mdp_frame *frame;
	int i;

	frame = FUNC0(ctx, vq->type);
	*num_planes = frame->fmt->num_planes;
	for (i = 0; i < frame->fmt->num_planes; i++)
		sizes[i] = frame->payload[i];
	FUNC1(2, "[%d] type:%d, planes:%d, buffers:%d, size:%u,%u",
		    ctx->id, vq->type, *num_planes, *num_buffers,
		    sizes[0], sizes[1]);
	return 0;
}