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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int /*<<< orphan*/  type; } ;
struct mtk_jpeg_ctx {TYPE_1__* jpeg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 struct vb2_v4l2_buffer* FUNC0 (struct mtk_jpeg_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct mtk_jpeg_ctx* FUNC3 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC4(struct vb2_queue *q, unsigned int count)
{
	struct mtk_jpeg_ctx *ctx = FUNC3(q);
	struct vb2_v4l2_buffer *vb;
	int ret = 0;

	ret = FUNC1(ctx->jpeg->dev);
	if (ret < 0)
		goto err;

	return 0;
err:
	while ((vb = FUNC0(ctx, q->type)))
		FUNC2(vb, VB2_BUF_STATE_QUEUED);
	return ret;
}