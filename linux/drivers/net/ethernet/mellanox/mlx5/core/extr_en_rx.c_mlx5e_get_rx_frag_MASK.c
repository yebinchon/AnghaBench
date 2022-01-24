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
struct mlx5e_wqe_frag_info {int /*<<< orphan*/  di; int /*<<< orphan*/  offset; } ;
struct mlx5e_rq {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5e_rq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct mlx5e_rq *rq,
				    struct mlx5e_wqe_frag_info *frag)
{
	int err = 0;

	if (!frag->offset)
		/* On first frag (offset == 0), replenish page (dma_info actually).
		 * Other frags that point to the same dma_info (with a different
		 * offset) should just use the new one without replenishing again
		 * by themselves.
		 */
		err = FUNC0(rq, frag->di);

	return err;
}