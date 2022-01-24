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
struct vpe_q_data {unsigned int nplanes; unsigned int* sizeimage; } ;
struct vpe_ctx {int /*<<< orphan*/  dev; } ;
struct vb2_queue {int /*<<< orphan*/  type; } ;
struct device {int dummy; } ;

/* Variables and functions */
 size_t VPE_CHROMA ; 
 size_t VPE_LUMA ; 
 struct vpe_q_data* FUNC0 (struct vpe_ctx*,int /*<<< orphan*/ ) ; 
 struct vpe_ctx* FUNC1 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 

__attribute__((used)) static int FUNC3(struct vb2_queue *vq,
			   unsigned int *nbuffers, unsigned int *nplanes,
			   unsigned int sizes[], struct device *alloc_devs[])
{
	int i;
	struct vpe_ctx *ctx = FUNC1(vq);
	struct vpe_q_data *q_data;

	q_data = FUNC0(ctx, vq->type);

	*nplanes = q_data->nplanes;

	for (i = 0; i < *nplanes; i++)
		sizes[i] = q_data->sizeimage[i];

	FUNC2(ctx->dev, "get %d buffer(s) of size %d", *nbuffers,
		sizes[VPE_LUMA]);
	if (q_data->nplanes == 2)
		FUNC2(ctx->dev, " and %d\n", sizes[VPE_CHROMA]);

	return 0;
}