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
struct TYPE_2__ {int /*<<< orphan*/  map_dir; } ;
struct mlx5e_rq {int /*<<< orphan*/  page_pool; int /*<<< orphan*/  pdev; TYPE_1__ buff; } ;
struct mlx5e_dma_info {int /*<<< orphan*/ * page; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5e_rq*,struct mlx5e_dma_info*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline int FUNC6(struct mlx5e_rq *rq,
					struct mlx5e_dma_info *dma_info)
{
	if (FUNC2(rq, dma_info))
		return 0;

	dma_info->page = FUNC3(rq->page_pool);
	if (FUNC5(!dma_info->page))
		return -ENOMEM;

	dma_info->addr = FUNC0(rq->pdev, dma_info->page, 0,
				      PAGE_SIZE, rq->buff.map_dir);
	if (FUNC5(FUNC1(rq->pdev, dma_info->addr))) {
		FUNC4(rq->page_pool, dma_info->page);
		dma_info->page = NULL;
		return -ENOMEM;
	}

	return 0;
}