#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vb2_queue {int /*<<< orphan*/  type; } ;
struct mtk_vcodec_ctx {int /*<<< orphan*/  id; } ;
struct mtk_q_data {unsigned int* sizeimage; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct mtk_q_data* FUNC2 (struct mtk_vcodec_ctx*,int /*<<< orphan*/ ) ; 
 struct mtk_vcodec_ctx* FUNC3 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC4(struct vb2_queue *vq,
				unsigned int *nbuffers,
				unsigned int *nplanes,
				unsigned int sizes[],
				struct device *alloc_devs[])
{
	struct mtk_vcodec_ctx *ctx = FUNC3(vq);
	struct mtk_q_data *q_data;
	unsigned int i;

	q_data = FUNC2(ctx, vq->type);

	if (q_data == NULL) {
		FUNC1("vq->type=%d err\n", vq->type);
		return -EINVAL;
	}

	if (*nplanes) {
		for (i = 0; i < *nplanes; i++) {
			if (sizes[i] < q_data->sizeimage[i])
				return -EINVAL;
		}
	} else {
		if (vq->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
			*nplanes = 2;
		else
			*nplanes = 1;

		for (i = 0; i < *nplanes; i++)
			sizes[i] = q_data->sizeimage[i];
	}

	FUNC0(1,
			"[%d]\t type = %d, get %d plane(s), %d buffer(s) of size 0x%x 0x%x ",
			ctx->id, vq->type, *nplanes, *nbuffers,
			sizes[0], sizes[1]);

	return 0;
}