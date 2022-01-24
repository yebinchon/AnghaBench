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
struct rga_frame {unsigned int size; } ;
struct rga_ctx {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct rga_frame*) ; 
 int FUNC1 (struct rga_frame*) ; 
 struct rga_frame* FUNC2 (struct rga_ctx*,int /*<<< orphan*/ ) ; 
 struct rga_ctx* FUNC3 (struct vb2_queue*) ; 

__attribute__((used)) static int
FUNC4(struct vb2_queue *vq,
		unsigned int *nbuffers, unsigned int *nplanes,
		unsigned int sizes[], struct device *alloc_devs[])
{
	struct rga_ctx *ctx = FUNC3(vq);
	struct rga_frame *f = FUNC2(ctx, vq->type);

	if (FUNC0(f))
		return FUNC1(f);

	if (*nplanes)
		return sizes[0] < f->size ? -EINVAL : 0;

	sizes[0] = f->size;
	*nplanes = 1;

	return 0;
}