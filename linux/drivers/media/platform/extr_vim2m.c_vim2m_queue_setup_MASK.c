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
struct vim2m_q_data {int width; int height; TYPE_1__* fmt; } ;
struct vim2m_ctx {int /*<<< orphan*/  dev; } ;
struct vb2_queue {int /*<<< orphan*/  type; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int depth; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int MEM2MEM_VID_MEM_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct vim2m_q_data* FUNC1 (struct vim2m_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vim2m_ctx* FUNC3 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC4(struct vb2_queue *vq,
			     unsigned int *nbuffers,
			     unsigned int *nplanes,
			     unsigned int sizes[],
			     struct device *alloc_devs[])
{
	struct vim2m_ctx *ctx = FUNC3(vq);
	struct vim2m_q_data *q_data;
	unsigned int size, count = *nbuffers;

	q_data = FUNC1(ctx, vq->type);
	if (!q_data)
		return -EINVAL;

	size = q_data->width * q_data->height * q_data->fmt->depth >> 3;

	while (size * count > MEM2MEM_VID_MEM_LIMIT)
		(count)--;
	*nbuffers = count;

	if (*nplanes)
		return sizes[0] < size ? -EINVAL : 0;

	*nplanes = 1;
	sizes[0] = size;

	FUNC0(ctx->dev, 1, "%s: get %d buffer(s) of size %d each.\n",
		FUNC2(vq->type), count, size);

	return 0;
}