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
struct vb2_buffer {TYPE_2__* vb2_queue; int /*<<< orphan*/  index; } ;
struct mtk_vcodec_ctx {int /*<<< orphan*/  id; } ;
struct mtk_q_data {scalar_t__* sizeimage; TYPE_1__* fmt; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int num_planes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__,scalar_t__) ; 
 struct mtk_q_data* FUNC2 (struct mtk_vcodec_ctx*,int /*<<< orphan*/ ) ; 
 struct mtk_vcodec_ctx* FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (struct vb2_buffer*,int) ; 

__attribute__((used)) static int FUNC5(struct vb2_buffer *vb)
{
	struct mtk_vcodec_ctx *ctx = FUNC3(vb->vb2_queue);
	struct mtk_q_data *q_data;
	int i;

	FUNC0(3, "[%d] (%d) id=%d",
			ctx->id, vb->vb2_queue->type, vb->index);

	q_data = FUNC2(ctx, vb->vb2_queue->type);

	for (i = 0; i < q_data->fmt->num_planes; i++) {
		if (FUNC4(vb, i) < q_data->sizeimage[i]) {
			FUNC1("data will not fit into plane %d (%lu < %d)",
				i, FUNC4(vb, i),
				q_data->sizeimage[i]);
		}
	}

	return 0;
}