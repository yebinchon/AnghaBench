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
struct mlx5e_rq {int /*<<< orphan*/  page_pool; } ;
struct mlx5e_dma_info {int /*<<< orphan*/  page; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_rq*,struct mlx5e_dma_info*) ; 
 scalar_t__ FUNC2 (struct mlx5e_rq*,struct mlx5e_dma_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct mlx5e_rq *rq,
				struct mlx5e_dma_info *dma_info,
				bool recycle)
{
	if (FUNC0(recycle)) {
		if (FUNC2(rq, dma_info))
			return;

		FUNC1(rq, dma_info);
		FUNC3(rq->page_pool, dma_info->page);
	} else {
		FUNC1(rq, dma_info);
		FUNC4(rq->page_pool, dma_info->page);
		FUNC5(dma_info->page);
	}
}