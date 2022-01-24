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
struct device {int dummy; } ;
struct coda_q_data {unsigned int sizeimage; } ;
struct coda_ctx {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,struct coda_ctx*,char*,unsigned int,unsigned int) ; 
 struct coda_q_data* FUNC1 (struct coda_ctx*,int /*<<< orphan*/ ) ; 
 struct coda_ctx* FUNC2 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC3(struct vb2_queue *vq,
				unsigned int *nbuffers, unsigned int *nplanes,
				unsigned int sizes[], struct device *alloc_devs[])
{
	struct coda_ctx *ctx = FUNC2(vq);
	struct coda_q_data *q_data;
	unsigned int size;

	q_data = FUNC1(ctx, vq->type);
	size = q_data->sizeimage;

	if (*nplanes)
		return sizes[0] < size ? -EINVAL : 0;

	*nplanes = 1;
	sizes[0] = size;

	FUNC0(1, ctx, "get %d buffer(s) of size %d each.\n", *nbuffers,
		 size);

	return 0;
}