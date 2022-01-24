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
struct mlx5e_rq {TYPE_1__ buff; int /*<<< orphan*/  pdev; } ;
struct mlx5e_dma_info {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct mlx5e_rq *rq, struct mlx5e_dma_info *dma_info)
{
	FUNC0(rq->pdev, dma_info->addr, PAGE_SIZE, rq->buff.map_dir);
}