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
struct vb2_queue {int type; } ;
struct mtk_jpeg_q_data {unsigned int* sizeimage; TYPE_1__* fmt; } ;
struct mtk_jpeg_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct mtk_jpeg_ctx {struct mtk_jpeg_dev* jpeg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int colplanes; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  debug ; 
 struct mtk_jpeg_q_data* FUNC0 (struct mtk_jpeg_ctx*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,unsigned int) ; 
 struct mtk_jpeg_ctx* FUNC2 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC3(struct vb2_queue *q,
				unsigned int *num_buffers,
				unsigned int *num_planes,
				unsigned int sizes[],
				struct device *alloc_ctxs[])
{
	struct mtk_jpeg_ctx *ctx = FUNC2(q);
	struct mtk_jpeg_q_data *q_data = NULL;
	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
	int i;

	FUNC1(1, debug, &jpeg->v4l2_dev, "(%d) buf_req count=%u\n",
		 q->type, *num_buffers);

	q_data = FUNC0(ctx, q->type);
	if (!q_data)
		return -EINVAL;

	*num_planes = q_data->fmt->colplanes;
	for (i = 0; i < q_data->fmt->colplanes; i++) {
		sizes[i] = q_data->sizeimage[i];
		FUNC1(1, debug, &jpeg->v4l2_dev, "sizeimage[%d]=%u\n",
			 i, sizes[i]);
	}

	return 0;
}